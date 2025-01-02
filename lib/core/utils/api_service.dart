import 'package:dio/dio.dart';

class ApiService
{
  final Dio dio;
  ApiService(this.dio);

  final String _baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String,dynamic>> get({required String endPoints}) async
  {
    var response = await dio.get('$_baseUrl$endPoints');
    return response.data;
  }
  
}