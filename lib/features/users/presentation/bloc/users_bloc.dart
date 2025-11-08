import 'package:bloc/bloc.dart';
import 'package:flutter_tutorial/features/users/presentation/bloc/users_event.dart';
import 'package:flutter_tutorial/features/users/presentation/bloc/users_state.dart';

import '../../domain/repository/users_repository.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UserRepository userRepository;

  UsersBloc({required this.userRepository}) : super(UsersState.initial()) {
    on<GetUsersEvent>(onGetUsersEvent);
  }

  Future onGetUsersEvent(GetUsersEvent event, Emitter<UsersState> emit) async {
    emit(state.copyWith(status: UsersStatus.loading));
    try {
      var users = await userRepository.getUsers();
      emit(state.copyWith(status: UsersStatus.success, users: users));
    } catch (e) {
      emit(
        state.copyWith(status: UsersStatus.error, errorMessage: e.toString()),
      );
    }
  }
}
