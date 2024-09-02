import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';
import '../repo/users_repo.dart';

class GetAllUsers {
  GetAllUsers({required UsersRepository repository})
      : _repository = repository;

  final UsersRepository _repository;

  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>>> call() async {
    final usersList = await _repository.getUsers();
    return usersList;
  }
}
