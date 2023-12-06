import 'package:bloc/bloc.dart';
import 'package:bookly_store/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_store/features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featuredBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
        (failure) => emit(NewestBooksFailure(errorMessage: failure.toString())),
        (success) => emit(NewestBooksSuccess(books: success)));
  }
}
