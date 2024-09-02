import 'package:flutter_task/feat/login/data/model/sign_in_params_model.dart';
import 'package:flutter_task/feat/register/presentation/ui/user_role.dart';

class SignUpParams {
  final SignInParams _signInParams;
  final UserRole _role;

  SignUpParams({required SignInParams signInParams, required UserRole role})
      : _signInParams = signInParams,
        _role = role;

  SignInParams get signInParams => _signInParams;
  UserRole get role => _role;
}
