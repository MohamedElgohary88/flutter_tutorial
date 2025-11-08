import 'package:flutter_tutorial/core/api/api_client.dart';
import 'package:flutter_tutorial/features/users/data/datasource/users_remote_data_source.dart';
import 'package:flutter_tutorial/features/users/data/repository/users_repository_impl.dart';
import 'package:flutter_tutorial/features/users/domain/repository/users_repository.dart';
import 'package:get_it/get_it.dart';

import '../features/users/presentation/bloc/users_bloc.dart';

var getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(ApiClient());
  getIt.registerSingleton(getIt<ApiClient>().getDio());
  getIt.registerLazySingleton(() => UserRemoteDataSource(dio: getIt()));
  getIt.registerLazySingleton<UserRepository>(() => UsersRepositoryImpl(userRemoteDataSource: getIt()));
  getIt.registerFactory(() => UsersBloc(userRepository: getIt()));

}
