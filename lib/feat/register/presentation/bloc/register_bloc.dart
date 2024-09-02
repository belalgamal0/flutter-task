import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/register/data/model/sign_up_params_model.dart';
import 'package:flutter_task/feat/register/presentation/ui/user_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/failure/failure.dart';
import '../../../login/domain/entity/user.dart';
import '../../domain/usecase/regiser.dart';
part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase registerUseCase;

  RegisterBloc(this.registerUseCase):super(const RegisterState()){
    on<RegisterEvent>(_register);
  }
  UserRole selectedRole = UserRole.viewer;
  void changeRole(UserRole role) {
    emit(state.copyWith(status: RegisterStatus.roleChaning));
        selectedRole = role;
    emit(state.copyWith(status: RegisterStatus.roleChanged));
  }

  void _register(RegisterEvent event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(status: RegisterStatus.loading));
  final result =   await registerUseCase(signUpParams: event.signUpParams);
      _eitherLoadedOrErrorState(result, emit);
  }
  _eitherLoadedOrErrorState(Either<Failure, UserAccount> failureOrMoviesList,
      Emitter<RegisterState> emit) async {
    failureOrMoviesList.fold(
      (failure) {
        emit(state.copyWith(status: RegisterStatus.error));
      },
      (userAccount) {
        emit(state.copyWith(status: RegisterStatus.success));
      },
    );
  }
}