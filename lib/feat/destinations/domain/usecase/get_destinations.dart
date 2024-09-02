import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';
import '../repo/destination_repo.dart';

class GetAllDestinations {
  GetAllDestinations({required DestinationsRepository repository})
      : _repository = repository;
  final DestinationsRepository _repository;
  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>>> call() async {
    final destinationList = await _repository.getDestinations();
    return destinationList;
  }
}
