import 'package:flutter_tutorial/features/users/data/datasource/users_remote_data_source.dart';
import 'package:flutter_tutorial/features/users/domain/model/user_model.dart';
import '../../domain/repository/users_repository.dart';

class UsersRepositoryImpl implements  UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UsersRepositoryImpl({ required this.userRemoteDataSource});

  @override
  Future<List<UserModel>> getUsers() async {
    return await userRemoteDataSource.getUsers();
  }
}