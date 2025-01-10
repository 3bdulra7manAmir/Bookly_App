part of 'similar_books_cubit.dart';

sealed class SimilarBooksStates extends Equatable
{
  const SimilarBooksStates();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitialState extends SimilarBooksStates {}

final class SimilarBooksLoadingState extends SimilarBooksStates {}

final class SimilarBooksSuccessState extends SimilarBooksStates
{
  final List<BookModel> books;

  const SimilarBooksSuccessState({required this.books });
}

final class SimilarBooksFailureState extends SimilarBooksStates
{
  const SimilarBooksFailureState({required this.errorMessage });

  final String errorMessage;
}
