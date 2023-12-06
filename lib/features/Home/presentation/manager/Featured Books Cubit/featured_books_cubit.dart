import 'package:bloc/bloc.dart';
import 'package:bookly_store/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_store/features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> featuredBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturesBooks();
    result.fold(
        (failure) =>
            emit(FeaturedBooksFailure(errorMessage: failure.toString())),
        (success) => emit(FeaturedBooksSuccess(books: success)));
  }
}
