part of 'login_bloc.dart';

@freezed
class LoginEvents with _$LoginEvents {
  const factory LoginEvents.login({
    required SignInParams signInParams
  }) = LoginEvent;
  
  const factory LoginEvents.logout() = LogoutEvent;
}
