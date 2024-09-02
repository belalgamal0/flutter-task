import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/login/data/model/sign_in_params_model.dart';
import 'package:flutter_task/feat/login/domain/entity/user.dart';
import 'package:flutter_task/feat/login/domain/usecase/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/failure/failure.dart';
part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase):super(const LoginState.initial()){
    on<LoginEvent>(_login);
  }
    bool validate(GlobalKey<FormState> form) {
    return form.currentState?.validate() ?? false;
  }
  void _login(LoginEvent event, Emitter<LoginState> emit) async {
    emit( const LoginState.loading());
  final result = await loginUseCase(signInParams: event.signInParams);
      _eitherLoadedOrErrorState(result, emit);
  }
  _eitherLoadedOrErrorState(Either<Failure, UserAccount> failureOrMoviesList,
      Emitter<LoginState> emit) async {
    failureOrMoviesList.fold(
      (failure) {
        emit(const LoginState.failure());
      },
      (userAccount) {
        emit(LoginState.success(userAccount));
      },
    );
  }
}