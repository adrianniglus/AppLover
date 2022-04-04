import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.idle() = LoginStateIdle;
  const factory LoginState.show() = LoginStateShow;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.wrongCredentials() = LoginStateWrongCredentials;
  const factory LoginState.success() = LoginStateSuccess;
  const factory LoginState.error(Object? message) = LoginStateError;
}
