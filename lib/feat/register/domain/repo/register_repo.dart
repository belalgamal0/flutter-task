import '../../../../core/failure/failure.dart';
import '../../../login/domain/entity/user.dart';
import 'package:dartz/dartz.dart';
import '../../data/model/sign_up_params_model.dart';
abstract class RegisterRepository {
  Future<Either<Failure, UserAccount>> register({required SignUpParams signUpParams });
}