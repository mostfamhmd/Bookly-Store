import 'package:bookly_store/core/errors/failure.dart';
import 'package:bookly_store/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
