import 'package:bookly/Features/home/presentation/views/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo
{
  HomeRepoImpl(this.apiService);

  final ApiService apiService;


  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async
  {
    try
    {
      var data = await apiService.get(endPoints: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    }
    catch (e)
    {
      //print(e.toString());
      if (e is DioException)
      {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
    
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async
  {
    try
    {
      var data = await apiService.get(endPoints: 'volumes?Filtering=free-ebooks&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    }
    catch (e)
    {
      //print(e.toString());
      if (e is DioException)
      {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}