import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';
import '../repo/destination_repo.dart';

class AddDestination {
  AddDestination({required DestinationsRepository repository})
      : _repository = repository;
  final DestinationsRepository _repository;
  Future<Either<Failure, void>> call({required String destinationName}) async {
    return _repository.addDestination(destinationName: destinationName);
  }
}
