part of 'register_bloc.dart';

enum RegisterStatus {
  initial,
  loading,
  success,
  roleChaning,
  roleChanged,
  error,
}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(RegisterStatus.initial) RegisterStatus status,
  }) = Initial;
}