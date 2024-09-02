import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';

abstract class UsersRepository {
  Future<Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>>> getUsers();
}