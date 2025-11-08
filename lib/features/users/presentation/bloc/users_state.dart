import '../../domain/model/user_model.dart';

enum UsersStatus {
  initial, loading, success, error
}

class UsersState {
  final UsersStatus status;
  final List<UserModel> users;
  final String? errorMessage;

  UsersState._({
    this.status = UsersStatus.initial,
    this.users = const [],
    this.errorMessage,
  });

  factory UsersState.initial() => UsersState._(status: UsersStatus.initial);


  UsersState copyWith({
    UsersStatus? status,
    List<UserModel>? users,
    String? errorMessage,
  }) {
    return UsersState._(
      status: status ?? this.status,
      users: users ?? this.users,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}