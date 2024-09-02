import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repo/destination_repo.dart';
import '../data_source/destination_data_source.dart';

@Injectable(as: DestinationsRepository)
class DestinationsRepositoryImpl implements DestinationsRepository {
  final DestinationsRemoteDataSource destinationsRemoteDataSource;
  final NetworkInfo networkInfo;

  DestinationsRepositoryImpl(
      {required this.destinationsRemoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>>>
      getDestinations() async {
    return await _getDestinations();
  }

  @override
  Future<Either<Failure, void>> addDestination(
      {required String destinationName}) async {
    return await _addDestination(destinationName: destinationName);
  }

  @override
  Future<Either<Failure, void>> updateDestination(
      {required String destinationName, required String destinationId}) async {
    return await _updateDestination(
        destinationName: destinationName, destinationId: destinationId);
  }

  @override
  Future<Either<Failure, void>> deleteDestination(
      {required String destinationId}) async {
    return await _deleteDestination(destinationId: destinationId);
  }

  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>>>
      _getDestinations() async {
    if (await networkInfo.isConnected) {
      try {
        final loadLogin = await destinationsRemoteDataSource.getDestinations();
        return Right(loadLogin);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }

  Future<Either<Failure, void>> _addDestination(
      {required String destinationName}) async {
    if (await networkInfo.isConnected) {
      try {
        await destinationsRemoteDataSource.addDestination(
            destinationName: destinationName);
        return const Right(null);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }

  Future<Either<Failure, void>> _updateDestination(
      {required String destinationName, required String destinationId}) async {
    if (await networkInfo.isConnected) {
      try {
        await destinationsRemoteDataSource.updateDestination(
            destinationName: destinationName, destinationId: destinationId);
        return const Right(null);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }

  Future<Either<Failure, void>> _deleteDestination(
      {required String destinationId}) async {
    if (await networkInfo.isConnected) {
      try {
        await destinationsRemoteDataSource.deleteDestination(
            destinationId: destinationId);
        return const Right(null);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }
}
