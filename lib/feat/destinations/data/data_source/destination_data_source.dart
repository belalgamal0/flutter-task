import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';

abstract class DestinationsRemoteDataSource {
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>> getDestinations();
  Future<void> addDestination({required String destinationName});
  Future<void> updateDestination(
      {required String destinationName, required String destinationId});
  Future<void> deleteDestination({required String destinationId});
}

@Injectable(as: DestinationsRemoteDataSource)
class DestinationsRemoteDataSourceImpl implements DestinationsRemoteDataSource {
  final FirebaseFirestore firebaseFirestore;
  const DestinationsRemoteDataSourceImpl(this.firebaseFirestore);

  @override
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>> getDestinations() =>_getDestinationsFromApi();
  @override
  Future<void> addDestination({required String destinationName}) => _addDestinationsFromApi(destinationName: destinationName);
  @override
  Future<void> updateDestination({required String destinationName, required String destinationId}) => _updateDestinationsFromApi(destinationName: destinationName, destinationId: destinationId);
  @override
  Future<void> deleteDestination({required String destinationId}) => _deleteDestinationsFromApi(destinationId: destinationId);
  Future<Stream<QuerySnapshot<Map<String, dynamic>>>> _getDestinationsFromApi() async {
    try {
      final result = firebaseFirestore.collection('destinations').snapshots();
      return result;
    } catch (e) {
      throw ServerFailure('');
    }
  }

  Future<void> _addDestinationsFromApi(
      {required String destinationName}) async {
    try {
      await firebaseFirestore.collection('destinations').add({
        'name': 'destination no. ${Random().nextInt(1000)}',
      });
    } catch (e) {
      throw ServerFailure('');
    }
  }

  Future<void> _updateDestinationsFromApi(
      {required String destinationName, required String destinationId}) async {
    try {
      firebaseFirestore.collection('destinations').doc(destinationId).update({
        'name': destinationName,
      });
    } catch (e) {
      throw ServerFailure('');
    }
  }

  Future<void> _deleteDestinationsFromApi(
      {required String destinationId}) async {
    try {
      firebaseFirestore.collection('destinations').doc(destinationId).delete();
    } catch (e) {
      throw ServerFailure('');
    }
  }
}
