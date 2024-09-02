import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_task/core/failure/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../login/domain/entity/user.dart';
import '../model/sign_up_params_model.dart';

abstract class RegisterRemoteDataSource {
  Future<UserAccount> register({required SignUpParams signUpParams});
}

@Injectable(as: RegisterRemoteDataSource)
class RegisterRemoteDataSourceImpl implements RegisterRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;
  const RegisterRemoteDataSourceImpl(this.firebaseAuth, this.firestore);

  Future<void> _assignRoleToUser(String uid, String role) async {
    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      'role': role,
    });
  }

  @override
  Future<UserAccount> register({required SignUpParams signUpParams}) =>
      _registerFromApi(signUpParams: signUpParams);
  Future<UserAccount> _registerFromApi(
      {required SignUpParams signUpParams}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(email: signUpParams.signInParams.email, password: signUpParams.signInParams.password)
          .then((userValue) {
        _assignRoleToUser(userValue.user!.uid, signUpParams.role.name).then((value) async {
          await firestore.collection('users').doc(userValue.user!.uid).set({
            'email': signUpParams.signInParams.email,
            'id': userValue.user!.uid,
            'role': signUpParams.role.name,
          });
        });
      }).onError((error, stackTrace) {
        throw ServerFailure('');
      });
      return UserAccount();
    } catch (e) {
      throw ServerFailure('');
    }
  }
}
