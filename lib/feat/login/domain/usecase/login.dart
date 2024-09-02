
import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';
import '../../data/model/sign_in_params_model.dart';
import '../entity/user.dart';
import '../repo/login_repo.dart';

class LoginUseCase {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  Future<Either<Failure, UserAccount>> call({required SignInParams signInParams}) async {
    return await _repository.login(signInParams: signInParams);
  }
}
