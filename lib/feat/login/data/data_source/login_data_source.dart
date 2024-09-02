import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_task/core/failure/failure.dart';
import 'package:flutter_task/feat/login/domain/entity/user.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_task/singleton.dart' as singleton;
import '../model/sign_in_params_model.dart';

abstract class LoginRemoteDataSource {
  Future<UserAccount> login({required SignInParams signInParams});
}

@Injectable(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  const LoginRemoteDataSourceImpl(this.firebaseAuth);

  Future<void> assignRoleToUser(String uid, String role) async {
    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      'role': role,
    });
  }

  Future<String?> getUserRole(String uid) async {
    DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();
    return userDoc['role'] as String?;
  }

  @override
  Future<UserAccount> login({required SignInParams signInParams}) =>
      _loginFromApi(signInParams: signInParams);
  Future<UserAccount> _loginFromApi(
      {required SignInParams signInParams}) async {
    try {
      final response = await firebaseAuth.signInWithEmailAndPassword(
          email: signInParams.email, password: signInParams.password);
      String roleModel = '';
      await getUserRole(response.user!.uid).then((value) => roleModel = value!);
      singleton.Singleton().user = UserAccount(
          email: response.user!.email!,
          id: response.user!.uid,
          role: roleModel.toString());
      return UserAccount(
          email: response.user!.email!,
          id: response.user!.uid,
          role: roleModel.toString());
    } catch (e) {
      throw ServerFailure('');
    }
  }
}
