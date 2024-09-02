// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_core/firebase_core.dart' as _i982;
import 'package:flutter_task/core/network/network_info.dart' as _i972;
import 'package:flutter_task/core/network/network_utils.dart' as _i695;
import 'package:flutter_task/feat/chat/data/datasource/chat_data_source.dart'
    as _i779;
import 'package:flutter_task/feat/chat/data/repo/chat_repo_impl.dart' as _i426;
import 'package:flutter_task/feat/chat/domain/repo/chat_repo.dart' as _i336;
import 'package:flutter_task/feat/chat/domain/usecase/load_chat.dart' as _i853;
import 'package:flutter_task/feat/chat/domain/usecase/send_message.dart'
    as _i511;
import 'package:flutter_task/feat/chat/presentation/bloc/chat_bloc.dart'
    as _i395;
import 'package:flutter_task/feat/destinations/data/data_source/destination_data_source.dart'
    as _i666;
import 'package:flutter_task/feat/destinations/data/repo/destination_repo_impl.dart'
    as _i204;
import 'package:flutter_task/feat/destinations/domain/repo/destination_repo.dart'
    as _i610;
import 'package:flutter_task/feat/destinations/domain/usecase/add_destination.dart'
    as _i745;
import 'package:flutter_task/feat/destinations/domain/usecase/delete_destination.dart'
    as _i435;
import 'package:flutter_task/feat/destinations/domain/usecase/get_destinations.dart'
    as _i711;
import 'package:flutter_task/feat/destinations/domain/usecase/update_destination.dart'
    as _i25;
import 'package:flutter_task/feat/destinations/presentation/bloc/destination_bloc.dart'
    as _i848;
import 'package:flutter_task/feat/home/presentation/bloc/home_bloc.dart'
    as _i1019;
import 'package:flutter_task/feat/login/data/data_source/login_data_source.dart'
    as _i317;
import 'package:flutter_task/feat/login/data/repo/login_repo_impl.dart'
    as _i826;
import 'package:flutter_task/feat/login/domain/repo/login_repo.dart' as _i960;
import 'package:flutter_task/feat/login/domain/usecase/login.dart' as _i547;
import 'package:flutter_task/feat/login/presentation/bloc/login_bloc.dart'
    as _i856;
import 'package:flutter_task/feat/register/data/data_source/register_data_source.dart'
    as _i780;
import 'package:flutter_task/feat/register/data/repo/register_repo_impl.dart'
    as _i706;
import 'package:flutter_task/feat/register/domain/repo/register_repo.dart'
    as _i235;
import 'package:flutter_task/feat/register/domain/usecase/regiser.dart'
    as _i971;
import 'package:flutter_task/feat/register/presentation/bloc/register_bloc.dart'
    as _i393;
import 'package:flutter_task/feat/users/data/data_source/users_data_source.dart'
    as _i182;
import 'package:flutter_task/feat/users/data/repo/users_repo_impl.dart'
    as _i489;
import 'package:flutter_task/feat/users/domain/repo/users_repo.dart' as _i471;
import 'package:flutter_task/feat/users/domain/usecase/get_userss.dart'
    as _i783;
import 'package:flutter_task/feat/users/presentation/bloc/users_bloc.dart'
    as _i130;
import 'package:flutter_task/injection_container.dart' as _i560;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule(this);
    final registerModule = _$RegisterModule();
    gh.factory<_i1019.HomeBloc>(() => appModule.homeBloc);
    await gh.factoryAsync<_i982.FirebaseApp>(
      () => registerModule.initFirebaseApp,
      preResolve: true,
    );
    gh.factory<_i59.FirebaseAuth>(() => registerModule.auth);
    gh.factory<_i974.FirebaseFirestore>(() => registerModule.firestore);
    gh.lazySingleton<_i361.Dio>(() => registerModule.httpClient);
    gh.lazySingleton<_i973.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.factory<_i182.UsersRemoteDataSource>(
        () => _i182.UsersRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i972.NetworkInfo>(() => _i972.NetworkInfoImpl(
        connectionChecker: gh<_i973.InternetConnectionChecker>()));
    gh.factory<_i666.DestinationsRemoteDataSource>(() =>
        _i666.DestinationsRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i317.LoginRemoteDataSource>(
        () => _i317.LoginRemoteDataSourceImpl(gh<_i59.FirebaseAuth>()));
    gh.factory<_i779.ChatRemoteDataSource>(
        () => _i779.ChatRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i610.DestinationsRepository>(
        () => _i204.DestinationsRepositoryImpl(
              destinationsRemoteDataSource:
                  gh<_i666.DestinationsRemoteDataSource>(),
              networkInfo: gh<_i972.NetworkInfo>(),
            ));
    gh.lazySingleton<_i972.NetworkInfoImpl>(() => appModule.networkInfo);
    gh.factory<_i960.LoginRepository>(() => _i826.LoginRepositoryImpl(
          loginRemoteDataSource: gh<_i317.LoginRemoteDataSource>(),
          networkInfo: gh<_i972.NetworkInfo>(),
        ));
    gh.factory<_i695.NetworkUtils>(
        () => _i695.NetworkUtils(dio: gh<_i361.Dio>()));
    gh.factory<_i780.RegisterRemoteDataSource>(
        () => _i780.RegisterRemoteDataSourceImpl(
              gh<_i59.FirebaseAuth>(),
              gh<_i974.FirebaseFirestore>(),
            ));
    gh.factory<_i336.ChatRepository>(() => _i426.ChatRepositoryImpl(
          chatRemoteDataSource: gh<_i779.ChatRemoteDataSource>(),
          networkInfo: gh<_i972.NetworkInfo>(),
        ));
    gh.factory<_i235.RegisterRepository>(() => _i706.RegisterRepositoryImpl(
          registerRemoteDataSource: gh<_i780.RegisterRemoteDataSource>(),
          networkInfo: gh<_i972.NetworkInfo>(),
        ));
    gh.factory<_i471.UsersRepository>(() => _i489.UsersRepositoryImpl(
          usersRemoteDataSource: gh<_i182.UsersRemoteDataSource>(),
          networkInfo: gh<_i972.NetworkInfo>(),
        ));
    gh.lazySingleton<_i783.GetAllUsers>(() => appModule.getAllUsers);
    gh.lazySingleton<_i853.LoadChat>(() => appModule.loadChat);
    gh.lazySingleton<_i511.SendMessage>(() => appModule.sendMessage);
    gh.lazySingleton<_i711.GetAllDestinations>(
        () => appModule.getAllDestinations);
    gh.lazySingleton<_i745.AddDestination>(() => appModule.addDestination);
    gh.lazySingleton<_i25.UpdateDestination>(() => appModule.updateDestination);
    gh.lazySingleton<_i435.DeleteDestination>(
        () => appModule.deleteDestination);
    gh.lazySingleton<_i547.LoginUseCase>(() => appModule.loginUsecase);
    gh.factory<_i395.ChatBloc>(() => appModule.chatBloc);
    gh.lazySingleton<_i971.RegisterUseCase>(() => appModule.registerUsecase);
    gh.factory<_i130.UsersBloc>(() => appModule.usersBloc);
    gh.factory<_i848.DestinationBloc>(() => appModule.destinationBloc);
    gh.factory<_i856.LoginBloc>(() => appModule.loginBloc);
    gh.factory<_i393.RegisterBloc>(() => appModule.registerBloc);
    return this;
  }
}

class _$AppModule extends _i560.AppModule {
  _$AppModule(this._getIt);

  final _i174.GetIt _getIt;

  @override
  _i1019.HomeBloc get homeBloc => _i1019.HomeBloc();

  @override
  _i972.NetworkInfoImpl get networkInfo => _i972.NetworkInfoImpl(
      connectionChecker: _getIt<_i973.InternetConnectionChecker>());

  @override
  _i783.GetAllUsers get getAllUsers =>
      _i783.GetAllUsers(repository: _getIt<_i471.UsersRepository>());

  @override
  _i853.LoadChat get loadChat =>
      _i853.LoadChat(repository: _getIt<_i336.ChatRepository>());

  @override
  _i511.SendMessage get sendMessage =>
      _i511.SendMessage(repository: _getIt<_i336.ChatRepository>());

  @override
  _i711.GetAllDestinations get getAllDestinations => _i711.GetAllDestinations(
      repository: _getIt<_i610.DestinationsRepository>());

  @override
  _i745.AddDestination get addDestination =>
      _i745.AddDestination(repository: _getIt<_i610.DestinationsRepository>());

  @override
  _i25.UpdateDestination get updateDestination => _i25.UpdateDestination(
      repository: _getIt<_i610.DestinationsRepository>());

  @override
  _i435.DeleteDestination get deleteDestination => _i435.DeleteDestination(
      repository: _getIt<_i610.DestinationsRepository>());

  @override
  _i547.LoginUseCase get loginUsecase =>
      _i547.LoginUseCase(_getIt<_i960.LoginRepository>());

  @override
  _i395.ChatBloc get chatBloc => _i395.ChatBloc(
        loadChat: _getIt<_i853.LoadChat>(),
        sendMessage: _getIt<_i511.SendMessage>(),
      );

  @override
  _i971.RegisterUseCase get registerUsecase =>
      _i971.RegisterUseCase(_getIt<_i235.RegisterRepository>());

  @override
  _i130.UsersBloc get usersBloc =>
      _i130.UsersBloc(getAllUsers: _getIt<_i783.GetAllUsers>());

  @override
  _i848.DestinationBloc get destinationBloc => _i848.DestinationBloc(
        addDestination: _getIt<_i745.AddDestination>(),
        getAllDestinations: _getIt<_i711.GetAllDestinations>(),
        updateDestination: _getIt<_i25.UpdateDestination>(),
        deleteDestination: _getIt<_i435.DeleteDestination>(),
      );

  @override
  _i856.LoginBloc get loginBloc =>
      _i856.LoginBloc(_getIt<_i547.LoginUseCase>());

  @override
  _i393.RegisterBloc get registerBloc =>
      _i393.RegisterBloc(_getIt<_i971.RegisterUseCase>());
}

class _$RegisterModule extends _i560.RegisterModule {}
