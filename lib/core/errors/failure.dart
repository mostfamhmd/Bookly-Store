// ignore_for_file: deprecated_member_use, constant_pattern_never_matches_value_type

import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(String errMessage) : super(errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (DioException) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioException.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        if (dioError.response != null && dioError.response!.data != null) {
          return ServerFailure.fromResponse(
              dioError.response!.statusCode, dioError.response!.data);
        }
        return ServerFailure('Opps There was an Error, Please try again');

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');

      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      if (response != null && response['error'] != null) {
        return ServerFailure(response['error']['message']);
      }
      return ServerFailure('Opps There was an Error, Please try again');
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
