import 'package:dio/dio.dart';

abstract class Failure{
  const Failure(this.errorMessage);

  final String errorMessage;

}

class ServerFailure extends Failure
{
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError)
  {
    switch(dioError.type)
    {
      
      case DioExceptionType.connectionTimeout:
      return ServerFailure('Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
      return ServerFailure('Send timeout with Api Server');
      case DioExceptionType.receiveTimeout:
      return ServerFailure('Receive timeout with Api Server');
      case DioExceptionType.badCertificate:
      return ServerFailure('Bad Certification with Api Server');
      case DioExceptionType.badResponse:
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
      return ServerFailure('Operation Canceled with Api Server');
      case DioExceptionType.connectionError:
      return ServerFailure('Connection Error with Api Server');
      case DioExceptionType.unknown:
      if(dioError.message!.contains('SocketException'))
      {
        return ServerFailure('No Internet connection');
      }
      return ServerFailure('Unknown error, please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response)
  {
    if(statusCode == 400 || statusCode < 401 || statusCode == 403)
    {
      return ServerFailure(response['error']['message']);
    }
    else if(statusCode == 404)
    {
      return ServerFailure('Your Request not Found, Please try Again Later!');
    }
    else if(statusCode == 500)
    {
      return ServerFailure('Internal server error, Please try Again Later!');
    }
    else
    {
      return ServerFailure('Opps There was an Error, Please try Again Later!');
    }
  }
}