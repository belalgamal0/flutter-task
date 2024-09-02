part of 'login_bloc.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  error,
}

class LoginState {
  const LoginState._({
    this.status = LoginStatus.initial,
    this.user,
  });

  const LoginState.initial() : this._();

  const LoginState.loading() : this._(status: LoginStatus.loading);

  const LoginState.success(UserAccount user)
      : this._(status: LoginStatus.success, user: user);

  const LoginState.failure() : this._(status: LoginStatus.error);

  final LoginStatus status;
  final UserAccount? user;

  LoginState copyWith({
    LoginStatus? status,
    UserAccount? user,
  }) {
    return LoginState._(
      status: status ?? this.status,
      user: status == LoginStatus.success ? user : null,
    );
  }
}
