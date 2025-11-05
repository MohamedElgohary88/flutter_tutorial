import 'package:dio/dio.dart';

class ApiClients {
  Dio getDio() {
    Dio dio = Dio();
    dio.options.baseUrl = 'https//:dummyjson.com';
    return dio;
  }
}