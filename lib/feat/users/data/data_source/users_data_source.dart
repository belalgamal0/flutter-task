import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import 'package:flutter_task/singleton.dart' as singleton;
abstract class UsersRemoteDataSource {
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>> getUsers();
}
@Injectable(as: UsersRemoteDataSource)
class UsersRemoteDataSourceImpl implements UsersRemoteDataSource {
  final FirebaseFirestore firebaseFirestore;
  const UsersRemoteDataSourceImpl(this.firebaseFirestore);

  @override
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>> getUsers() => _getUsersFromApi();
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>> _getUsersFromApi() async {
      try {
          final result = firebaseFirestore.collection('users').where('role', isNotEqualTo:singleton.Singleton().user!.role).snapshots();
      return result;
    } catch (e) {
      throw ServerFailure('');
    }
  }
}
