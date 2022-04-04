import 'dart:developer';
import 'package:applover/domain/auth/use_cases/login_use_case.dart';
import 'package:applover/domain/entities/user_credentials.dart';
import 'package:applover/presentation/login_page/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase _loginUseCase;
  LoginCubit(this._loginUseCase) : super(const LoginState.idle());

  Future<void> init() async {
    try {
      //some stuff to be done initially
    } catch (ex, st) {
      log('Cant process login initial ($runtimeType, $ex, $st)');
      emit(LoginState.error(ex));
    }
    emit(const LoginState.show());
  }

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());
    final userCredentials = UserCredentials(email, password);
    try {
      await _loginUseCase(userCredentials);
      emit(const LoginState.success());
    } catch (ex, st) {
      log('Cant log in($runtimeType, $ex, $st)');
      emit(const LoginState.wrongCredentials());
    }
  }
}
