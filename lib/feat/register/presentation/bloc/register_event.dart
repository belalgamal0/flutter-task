part of 'register_bloc.dart';

@freezed
class RegisterEvents with _$RegisterEvents {
  const factory RegisterEvents.register({
    required SignUpParams signUpParams,
  }) = RegisterEvent;
}
