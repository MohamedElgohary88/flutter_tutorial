import 'package:dio/dio.dart';
import 'package:flutter_tutorial/features/users/domain/model/user_model.dart';

class UserRemoteDataSource {
  final Dio dio;

  UserRemoteDataSource({required this.dio});

  Future<List<UserModel>> getUsers() async {
    var result = await dio.get('users');
    if (result.statusCode == 200) {
      var data = result.data['users'];
      return (data as List).map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  }
}
