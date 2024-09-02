import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/login/domain/entity/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../destinations/destinations_page.dart';
import '../../../users/presentation/ui/pages/users_page.dart';
part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvents, HomeState> {
  UserAccount? _user;
  UserAccount get user => _user!;
  set setUser(UserAccount user) => _user = user;

  HomeBloc():super(const HomeState.initial()){
    on<ChangePageEvent>(_changePage);
    on<AddUserAccountEvent>(_addUserAccount);
  }
  int _activeIndex=0;
  int get activeIndex => _activeIndex;
  List<Widget> get screens => _screens;
  final List<Widget> _screens = [
    DestinationsPage(),
    UserListPage(),
  ];
  void _changePage(ChangePageEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    _activeIndex = event.activePageIndex;
    emit(state.copyWith(status: HomeStatus.success));
  }
  void _addUserAccount(AddUserAccountEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    _user = event.userAccount;

    emit(state.copyWith(status: HomeStatus.success));
  }
}