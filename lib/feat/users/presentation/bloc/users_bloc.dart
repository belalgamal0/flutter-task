import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/failure/failure.dart';
import '../../domain/usecase/get_userss.dart';
part 'users_bloc.freezed.dart';
part 'users_event.dart';
part 'users_state.dart';
class UsersBloc extends Bloc<UsersEvents, UsersState> {
  final GetAllUsers getAllUsers;

  UsersBloc({
    required this.getAllUsers,
  }) : super(const UsersState.initial()) {
    on<LoadUsersEvent>(_loadUserss);
  }
  void _loadUserss(LoadUsersEvent event, Emitter<UsersState> emit) async {
    emit(const UsersState.loading());

    final result = await getAllUsers();
    _eitherLoadedOrErrorState(result, emit);
  }
  void _eitherLoadedOrErrorState(
    Either<Failure, Stream<QuerySnapshot<Map<String, dynamic>>>> failureOrStream,
    Emitter<UsersState> emit,
  ) {
    failureOrStream.fold(
      (failure) {
        emit(const UsersState.failure());
      },
      (stream) {
        emit(UsersState.success(stream));
      },
    );
  }
}