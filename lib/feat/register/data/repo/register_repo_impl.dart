import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../../login/domain/entity/user.dart';
import '../../domain/repo/register_repo.dart';
import '../data_source/register_data_source.dart';
import '../model/sign_up_params_model.dart';

@Injectable(as: RegisterRepository)
class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterRemoteDataSource registerRemoteDataSource;
  final NetworkInfo networkInfo;
  
  RegisterRepositoryImpl(
      {required this.registerRemoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, UserAccount>> register({required SignUpParams signUpParams}) async {
    return await _registerRemote(signUpParams: signUpParams);
  }

  Future<Either<Failure, UserAccount>> _registerRemote({required SignUpParams signUpParams}) async {
    if (await networkInfo.isConnected) {
      try {
        final loadLogin = await registerRemoteDataSource.register(signUpParams: signUpParams);
        return Right(loadLogin);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }
}