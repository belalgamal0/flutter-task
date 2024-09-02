part of 'users_bloc.dart';

@freezed
class UsersEvents with _$UsersEvents {
  const factory UsersEvents.getUsers() = LoadUsersEvent;

}
