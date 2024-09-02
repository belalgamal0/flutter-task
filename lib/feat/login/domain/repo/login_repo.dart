import '../../../../core/failure/failure.dart';
import '../../data/model/sign_in_params_model.dart';
import '../entity/user.dart';
import 'package:dartz/dartz.dart';
abstract class LoginRepository {
  Future<Either<Failure, UserAccount>> login({required SignInParams signInParams});
}