part of 'users_bloc.dart';

enum UsersStatus {
  initial,
  loading,
  success,
  error,
}

final class UsersState {
  const UsersState._({
    this.status = UsersStatus.initial,
    this.users = const Stream.empty(),
  });
  const UsersState.initial() : this._();
  const UsersState.loading() : this._(status: UsersStatus.loading);
  const UsersState.success(Stream<QuerySnapshot<Map<String, dynamic>>> users)
      : this._(status: UsersStatus.success, users: users);
  const UsersState.failure() : this._(status: UsersStatus.error);
  final UsersStatus status;
  final Stream<QuerySnapshot<Map<String, dynamic>>> users;

  UsersState copyWith({
    UsersStatus? status,
    Stream<QuerySnapshot<Map<String, dynamic>>>? users,
  }) {
    return UsersState._(
      status: status ?? this.status,
      users: users ?? this.users,
    );
  }
}
