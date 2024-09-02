import 'package:dartz/dartz.dart';
import 'package:flutter_task/feat/login/domain/repo/login_repo.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entity/user.dart';
import '../data_source/login_data_source.dart';
import '../model/sign_in_params_model.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;
  final NetworkInfo networkInfo;
  LoginRepositoryImpl(
      {required this.loginRemoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, UserAccount>> login(
      {required SignInParams signInParams}) async {
    return await _loginRemote(signInParams: signInParams);
  }

  Future<Either<Failure, UserAccount>> _loginRemote(
      {required SignInParams signInParams}) async {
    if (await networkInfo.isConnected) {
      try {
        final loadLogin =
            await loginRemoteDataSource.login(signInParams: signInParams);
        return Right(loadLogin);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }
}
