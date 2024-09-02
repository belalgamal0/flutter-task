
import 'package:dartz/dartz.dart';
import 'package:flutter_task/feat/register/data/model/sign_up_params_model.dart';
import '../../../../core/failure/failure.dart';
import '../../../login/domain/entity/user.dart';
import '../repo/register_repo.dart';

class RegisterUseCase {
  final RegisterRepository _repository;

  RegisterUseCase(this._repository);

  Future<Either<Failure, UserAccount>> call({required SignUpParams signUpParams}) async {
    return await _repository.register(signUpParams: signUpParams);
  }
}
