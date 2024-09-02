import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repo/users_repo.dart';
import '../data_source/users_data_source.dart';

@Injectable(as: UsersRepository)
class UsersRepositoryImpl implements UsersRepository {
  final UsersRemoteDataSource usersRemoteDataSource;
  final NetworkInfo networkInfo;


  UsersRepositoryImpl(
      {required this.usersRemoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>>> getUsers() async {
    return await _getUsers();
  }
  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>>> _getUsers() async {
    if (await networkInfo.isConnected) {
      try {
        final loadLogin = await usersRemoteDataSource.getUsers();
        return Right(loadLogin);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }
}