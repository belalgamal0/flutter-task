import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';
import '../repo/destination_repo.dart';

class DeleteDestination {
  DeleteDestination({required DestinationsRepository repository})
      : _repository = repository;
  final DestinationsRepository _repository;
  Future<Either<Failure, void>> call({required String destinationId}) async {
    return _repository.deleteDestination( destinationId: destinationId);
  }
}
