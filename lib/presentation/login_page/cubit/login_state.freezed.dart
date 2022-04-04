// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  LoginStateIdle idle() {
    return const LoginStateIdle();
  }

  LoginStateShow show() {
    return const LoginStateShow();
  }

  LoginStateLoading loading() {
    return const LoginStateLoading();
  }

  LoginStateWrongCredentials wrongCredentials() {
    return const LoginStateWrongCredentials();
  }

  LoginStateSuccess success() {
    return const LoginStateSuccess();
  }

  LoginStateError error(Object? message) {
    return LoginStateError(
      message,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() show,
    required TResult Function() loading,
    required TResult Function() wrongCredentials,
    required TResult Function() success,
    required TResult Function(Object? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateIdle value) idle,
    required TResult Function(LoginStateShow value) show,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateWrongCredentials value)
        wrongCredentials,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $LoginStateIdleCopyWith<$Res> {
  factory $LoginStateIdleCopyWith(
          LoginStateIdle value, $Res Function(LoginStateIdle) then) =
      _$LoginStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateIdleCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateIdleCopyWith<$Res> {
  _$LoginStateIdleCopyWithImpl(
      LoginStateIdle _value, $Res Function(LoginStateIdle) _then)
      : super(_value, (v) => _then(v as LoginStateIdle));

  @override
  LoginStateIdle get _value => super._value as LoginStateIdle;
}

/// @nodoc

class _$LoginStateIdle implements LoginStateIdle {
  const _$LoginStateIdle();

  @override
  String toString() {
    return 'LoginState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() show,
    required TResult Function() loading,
    required TResult Function() wrongCredentials,
    required TResult Function() success,
    required TResult Function(Object? message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateIdle value) idle,
    required TResult Function(LoginStateShow value) show,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateWrongCredentials value)
        wrongCredentials,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class LoginStateIdle implements LoginState {
  const factory LoginStateIdle() = _$LoginStateIdle;
}

/// @nodoc
abstract class $LoginStateShowCopyWith<$Res> {
  factory $LoginStateShowCopyWith(
          LoginStateShow value, $Res Function(LoginStateShow) then) =
      _$LoginStateShowCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateShowCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateShowCopyWith<$Res> {
  _$LoginStateShowCopyWithImpl(
      LoginStateShow _value, $Res Function(LoginStateShow) _then)
      : super(_value, (v) => _then(v as LoginStateShow));

  @override
  LoginStateShow get _value => super._value as LoginStateShow;
}

/// @nodoc

class _$LoginStateShow implements LoginStateShow {
  const _$LoginStateShow();

  @override
  String toString() {
    return 'LoginState.show()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateShow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() show,
    required TResult Function() loading,
    required TResult Function() wrongCredentials,
    required TResult Function() success,
    required TResult Function(Object? message) error,
  }) {
    return show();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
  }) {
    return show?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateIdle value) idle,
    required TResult Function(LoginStateShow value) show,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateWrongCredentials value)
        wrongCredentials,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateError value) error,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class LoginStateShow implements LoginState {
  const factory LoginStateShow() = _$LoginStateShow;
}

/// @nodoc
abstract class $LoginStateLoadingCopyWith<$Res> {
  factory $LoginStateLoadingCopyWith(
          LoginStateLoading value, $Res Function(LoginStateLoading) then) =
      _$LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateLoadingCopyWith<$Res> {
  _$LoginStateLoadingCopyWithImpl(
      LoginStateLoading _value, $Res Function(LoginStateLoading) _then)
      : super(_value, (v) => _then(v as LoginStateLoading));

  @override
  LoginStateLoading get _value => super._value as LoginStateLoading;
}

/// @nodoc

class _$LoginStateLoading implements LoginStateLoading {
  const _$LoginStateLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() show,
    required TResult Function() loading,
    required TResult Function() wrongCredentials,
    required TResult Function() success,
    required TResult Function(Object? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateIdle value) idle,
    required TResult Function(LoginStateShow value) show,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateWrongCredentials value)
        wrongCredentials,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading() = _$LoginStateLoading;
}

/// @nodoc
abstract class $LoginStateWrongCredentialsCopyWith<$Res> {
  factory $LoginStateWrongCredentialsCopyWith(LoginStateWrongCredentials value,
          $Res Function(LoginStateWrongCredentials) then) =
      _$LoginStateWrongCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateWrongCredentialsCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateWrongCredentialsCopyWith<$Res> {
  _$LoginStateWrongCredentialsCopyWithImpl(LoginStateWrongCredentials _value,
      $Res Function(LoginStateWrongCredentials) _then)
      : super(_value, (v) => _then(v as LoginStateWrongCredentials));

  @override
  LoginStateWrongCredentials get _value =>
      super._value as LoginStateWrongCredentials;
}

/// @nodoc

class _$LoginStateWrongCredentials implements LoginStateWrongCredentials {
  const _$LoginStateWrongCredentials();

  @override
  String toString() {
    return 'LoginState.wrongCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginStateWrongCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() show,
    required TResult Function() loading,
    required TResult Function() wrongCredentials,
    required TResult Function() success,
    required TResult Function(Object? message) error,
  }) {
    return wrongCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
  }) {
    return wrongCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
    required TResult orElse(),
  }) {
    if (wrongCredentials != null) {
      return wrongCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateIdle value) idle,
    required TResult Function(LoginStateShow value) show,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateWrongCredentials value)
        wrongCredentials,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateError value) error,
  }) {
    return wrongCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
  }) {
    return wrongCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (wrongCredentials != null) {
      return wrongCredentials(this);
    }
    return orElse();
  }
}

abstract class LoginStateWrongCredentials implements LoginState {
  const factory LoginStateWrongCredentials() = _$LoginStateWrongCredentials;
}

/// @nodoc
abstract class $LoginStateSuccessCopyWith<$Res> {
  factory $LoginStateSuccessCopyWith(
          LoginStateSuccess value, $Res Function(LoginStateSuccess) then) =
      _$LoginStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateSuccessCopyWith<$Res> {
  _$LoginStateSuccessCopyWithImpl(
      LoginStateSuccess _value, $Res Function(LoginStateSuccess) _then)
      : super(_value, (v) => _then(v as LoginStateSuccess));

  @override
  LoginStateSuccess get _value => super._value as LoginStateSuccess;
}

/// @nodoc

class _$LoginStateSuccess implements LoginStateSuccess {
  const _$LoginStateSuccess();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() show,
    required TResult Function() loading,
    required TResult Function() wrongCredentials,
    required TResult Function() success,
    required TResult Function(Object? message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateIdle value) idle,
    required TResult Function(LoginStateShow value) show,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateWrongCredentials value)
        wrongCredentials,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginStateSuccess implements LoginState {
  const factory LoginStateSuccess() = _$LoginStateSuccess;
}

/// @nodoc
abstract class $LoginStateErrorCopyWith<$Res> {
  factory $LoginStateErrorCopyWith(
          LoginStateError value, $Res Function(LoginStateError) then) =
      _$LoginStateErrorCopyWithImpl<$Res>;
  $Res call({Object? message});
}

/// @nodoc
class _$LoginStateErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateErrorCopyWith<$Res> {
  _$LoginStateErrorCopyWithImpl(
      LoginStateError _value, $Res Function(LoginStateError) _then)
      : super(_value, (v) => _then(v as LoginStateError));

  @override
  LoginStateError get _value => super._value as LoginStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LoginStateError(
      message == freezed ? _value.message : message,
    ));
  }
}

/// @nodoc

class _$LoginStateError implements LoginStateError {
  const _$LoginStateError(this.message);

  @override
  final Object? message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LoginStateErrorCopyWith<LoginStateError> get copyWith =>
      _$LoginStateErrorCopyWithImpl<LoginStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() show,
    required TResult Function() loading,
    required TResult Function() wrongCredentials,
    required TResult Function() success,
    required TResult Function(Object? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? show,
    TResult Function()? loading,
    TResult Function()? wrongCredentials,
    TResult Function()? success,
    TResult Function(Object? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateIdle value) idle,
    required TResult Function(LoginStateShow value) show,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateWrongCredentials value)
        wrongCredentials,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateIdle value)? idle,
    TResult Function(LoginStateShow value)? show,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateWrongCredentials value)? wrongCredentials,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginStateError implements LoginState {
  const factory LoginStateError(Object? message) = _$LoginStateError;

  Object? get message;
  @JsonKey(ignore: true)
  $LoginStateErrorCopyWith<LoginStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
