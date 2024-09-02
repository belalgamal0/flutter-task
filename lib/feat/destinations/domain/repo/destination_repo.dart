import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';

abstract class DestinationsRepository {
  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>>> getDestinations();
  Future<Either<Failure, void>> addDestination({required String destinationName});
  Future<Either<Failure, void>> updateDestination({required String destinationName, required String destinationId});
  Future<Either<Failure, void>> deleteDestination({required String destinationId});
}