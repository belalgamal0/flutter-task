import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart' as dio;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_task/feat/chat/domain/usecase/load_chat.dart';
import 'package:flutter_task/feat/chat/domain/usecase/send_message.dart';
import 'package:flutter_task/feat/destinations/domain/usecase/get_destinations.dart';
import 'package:flutter_task/feat/destinations/domain/usecase/update_destination.dart';
import 'package:flutter_task/feat/register/presentation/bloc/register_bloc.dart';
import 'package:flutter_task/feat/users/domain/usecase/get_userss.dart';
import 'package:flutter_task/feat/users/presentation/bloc/users_bloc.dart';
import 'package:flutter_task/injection_container.config.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'core/network/network_info.dart';
import 'feat/chat/presentation/bloc/chat_bloc.dart';
import 'feat/destinations/domain/usecase/add_destination.dart';
import 'feat/destinations/domain/usecase/delete_destination.dart';
import 'feat/destinations/presentation/bloc/destination_bloc.dart';
import 'feat/home/presentation/bloc/home_bloc.dart';
import 'feat/login/domain/usecase/login.dart';
import 'feat/login/presentation/bloc/login_bloc.dart';
import 'feat/register/domain/usecase/regiser.dart';
import 'firebase_options.dart';

@module
abstract class AppModule {
  // Register blocs
  @injectable
  LoginBloc get loginBloc;
  @injectable
  RegisterBloc get registerBloc;
  @injectable
  DestinationBloc get destinationBloc;
  @injectable
  HomeBloc get homeBloc;
    @injectable
  UsersBloc get usersBloc;
      @injectable
  ChatBloc get chatBloc;
  // Register use cases
  @lazySingleton
  LoginUseCase get loginUsecase;
  @lazySingleton
  RegisterUseCase get registerUsecase;
  @lazySingleton
  GetAllDestinations get getAllDestinations;
  @lazySingleton
  AddDestination get addDestination;
  @lazySingleton
  UpdateDestination get updateDestination;
  @lazySingleton
  DeleteDestination get deleteDestination;
    @lazySingleton

  GetAllUsers get getAllUsers;
  @lazySingleton
  LoadChat get loadChat;
    @lazySingleton
  SendMessage get sendMessage;
  // Register other dependencies
  @lazySingleton
  NetworkInfoImpl get networkInfo;
}

@module
abstract class RegisterModule {
  @lazySingleton
  dio.Dio get httpClient => dio.Dio();
  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();
  @preResolve
  Future<FirebaseApp> get initFirebaseApp =>
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @injectable
  FirebaseAuth get auth => FirebaseAuth.instance;

  @injectable
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
// @module
// abstract class FirebaseModule {
//   @preResolve
//   Future<FirebaseApp> get initFirebaseApp =>
//       Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

//   @injectable
//   FirebaseAuth get auth => FirebaseAuth.instance;

//   @injectable
//   FirebaseFirestore get firestore => FirebaseFirestore.instance;
// }
final getIT = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIT.init();
