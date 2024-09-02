import 'package:flutter_task/feat/login/domain/entity/user.dart';

class Singleton {
  static final Singleton _singleton = Singleton._internal();
  UserAccount? user;
  factory Singleton() {
    return _singleton;
  }
  
  Singleton._internal();
}