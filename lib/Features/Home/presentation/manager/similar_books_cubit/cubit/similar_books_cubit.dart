import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates>
{
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());

  final HomeRepo homeRepo;


  Future<void> fetchSimilarBooks({required String category}) async
  {
    emit(SimilarBooksLoadingState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure)
    {
      emit(SimilarBooksFailureState(errorMessage: failure.errorMessage));
    },
    (books)
    {
      emit(SimilarBooksSuccessState(books: books));
    });
  }
}
