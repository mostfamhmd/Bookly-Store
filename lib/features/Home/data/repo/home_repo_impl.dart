// ignore_for_file: non_constant_identifier_names

import 'package:bookly_store/core/errors/failure.dart';
import 'package:bookly_store/core/services/api_services.dart';
import 'package:bookly_store/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_store/features/Home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices api_services;

  HomeRepoImpl(this.api_services);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await api_services.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=subject:programming&orderBy=newest");
      List<BookModel> books = [];
      books.add(BookModel.fromBookModel(data));
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks() async {
    try {
      var data = await api_services.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:programming");
      List<BookModel> books = [];
      books.add(BookModel.fromBookModel(data));
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
