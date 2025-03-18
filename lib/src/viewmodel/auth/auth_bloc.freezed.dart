// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) login,
    required TResult Function() logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String username, String password)? login,
    TResult? Function()? logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) login,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String username, String password)? login,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
    _$LoginImpl value,
    $Res Function(_$LoginImpl) then,
  ) = __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
    _$LoginImpl _value,
    $Res Function(_$LoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = null, Object? password = null}) {
    return _then(
      _$LoginImpl(
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$LoginImpl with DiagnosticableTreeMixin implements _Login {
  const _$LoginImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.login(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.login'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) login,
    required TResult Function() logout,
  }) {
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String username, String password)? login,
    TResult? Function()? logout,
  }) {
    return login?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login({
    required final String username,
    required final String password,
  }) = _$LoginImpl;

  String get username;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
    _$LogoutImpl value,
    $Res Function(_$LogoutImpl) then,
  ) = __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
    _$LogoutImpl _value,
    $Res Function(_$LogoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl with DiagnosticableTreeMixin implements _Logout {
  const _$LogoutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.logout'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String username, String password)? login,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) logoutFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginInProgress,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function()? logoutInProgress,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? logoutFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? logoutFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginInProgress value) loginInProgress,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LogoutInProgress value) logoutInProgress,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailure value) logoutFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginInProgress value)? loginInProgress,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LogoutInProgress value)? logoutInProgress,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailure value)? logoutFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginInProgress value)? loginInProgress,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LogoutInProgress value)? logoutInProgress,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) logoutFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginInProgress,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function()? logoutInProgress,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? logoutFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? logoutFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginInProgress value) loginInProgress,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LogoutInProgress value) logoutInProgress,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailure value) logoutFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginInProgress value)? loginInProgress,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LogoutInProgress value)? logoutInProgress,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailure value)? logoutFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginInProgress value)? loginInProgress,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LogoutInProgress value)? logoutInProgress,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginInProgressImplCopyWith<$Res> {
  factory _$$LoginInProgressImplCopyWith(
    _$LoginInProgressImpl value,
    $Res Function(_$LoginInProgressImpl) then,
  ) = __$$LoginInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInProgressImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginInProgressImpl>
    implements _$$LoginInProgressImplCopyWith<$Res> {
  __$$LoginInProgressImplCopyWithImpl(
    _$LoginInProgressImpl _value,
    $Res Function(_$LoginInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginInProgressImpl
    with DiagnosticableTreeMixin
    implements _LoginInProgress {
  const _$LoginInProgressImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loginInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.loginInProgress'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) logoutFailure,
  }) {
    return loginInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginInProgress,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function()? logoutInProgress,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? logoutFailure,
  }) {
    return loginInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginInProgress != null) {
      return loginInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginInProgress value) loginInProgress,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LogoutInProgress value) logoutInProgress,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailure value) logoutFailure,
  }) {
    return loginInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginInProgress value)? loginInProgress,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LogoutInProgress value)? logoutInProgress,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailure value)? logoutFailure,
  }) {
    return loginInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginInProgress value)? loginInProgress,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LogoutInProgress value)? logoutInProgress,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginInProgress != null) {
      return loginInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoginInProgress implements AuthState {
  const factory _LoginInProgress() = _$LoginInProgressImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
    _$LoginSuccessImpl value,
    $Res Function(_$LoginSuccessImpl) then,
  ) = __$$LoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
    _$LoginSuccessImpl _value,
    $Res Function(_$LoginSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginSuccessImpl with DiagnosticableTreeMixin implements _LoginSuccess {
  const _$LoginSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loginSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.loginSuccess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) logoutFailure,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginInProgress,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function()? logoutInProgress,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? logoutFailure,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginInProgress value) loginInProgress,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LogoutInProgress value) logoutInProgress,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailure value) logoutFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginInProgress value)? loginInProgress,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LogoutInProgress value)? logoutInProgress,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailure value)? logoutFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginInProgress value)? loginInProgress,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LogoutInProgress value)? logoutInProgress,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess() = _$LoginSuccessImpl;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
    _$LoginFailureImpl value,
    $Res Function(_$LoginFailureImpl) then,
  ) = __$$LoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
    _$LoginFailureImpl _value,
    $Res Function(_$LoginFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$LoginFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$LoginFailureImpl with DiagnosticableTreeMixin implements _LoginFailure {
  const _$LoginFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loginFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.loginFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<_$LoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) logoutFailure,
  }) {
    return loginFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginInProgress,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function()? logoutInProgress,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? logoutFailure,
  }) {
    return loginFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginInProgress value) loginInProgress,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LogoutInProgress value) logoutInProgress,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailure value) logoutFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginInProgress value)? loginInProgress,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LogoutInProgress value)? logoutInProgress,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailure value)? logoutFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginInProgress value)? loginInProgress,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LogoutInProgress value)? logoutInProgress,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginFailure implements AuthState {
  const factory _LoginFailure(final String message) = _$LoginFailureImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutInProgressImplCopyWith<$Res> {
  factory _$$LogoutInProgressImplCopyWith(
    _$LogoutInProgressImpl value,
    $Res Function(_$LogoutInProgressImpl) then,
  ) = __$$LogoutInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutInProgressImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutInProgressImpl>
    implements _$$LogoutInProgressImplCopyWith<$Res> {
  __$$LogoutInProgressImplCopyWithImpl(
    _$LogoutInProgressImpl _value,
    $Res Function(_$LogoutInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutInProgressImpl
    with DiagnosticableTreeMixin
    implements _LogoutInProgress {
  const _$LogoutInProgressImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.logoutInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.logoutInProgress'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) logoutFailure,
  }) {
    return logoutInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginInProgress,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function()? logoutInProgress,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? logoutFailure,
  }) {
    return logoutInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutInProgress != null) {
      return logoutInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginInProgress value) loginInProgress,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LogoutInProgress value) logoutInProgress,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailure value) logoutFailure,
  }) {
    return logoutInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginInProgress value)? loginInProgress,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LogoutInProgress value)? logoutInProgress,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailure value)? logoutFailure,
  }) {
    return logoutInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginInProgress value)? loginInProgress,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LogoutInProgress value)? logoutInProgress,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutInProgress != null) {
      return logoutInProgress(this);
    }
    return orElse();
  }
}

abstract class _LogoutInProgress implements AuthState {
  const factory _LogoutInProgress() = _$LogoutInProgressImpl;
}

/// @nodoc
abstract class _$$LogoutSuccessImplCopyWith<$Res> {
  factory _$$LogoutSuccessImplCopyWith(
    _$LogoutSuccessImpl value,
    $Res Function(_$LogoutSuccessImpl) then,
  ) = __$$LogoutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutSuccessImpl>
    implements _$$LogoutSuccessImplCopyWith<$Res> {
  __$$LogoutSuccessImplCopyWithImpl(
    _$LogoutSuccessImpl _value,
    $Res Function(_$LogoutSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutSuccessImpl
    with DiagnosticableTreeMixin
    implements _LogoutSuccess {
  const _$LogoutSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.logoutSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.logoutSuccess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) logoutFailure,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginInProgress,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function()? logoutInProgress,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? logoutFailure,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginInProgress value) loginInProgress,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LogoutInProgress value) logoutInProgress,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailure value) logoutFailure,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginInProgress value)? loginInProgress,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LogoutInProgress value)? logoutInProgress,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailure value)? logoutFailure,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginInProgress value)? loginInProgress,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LogoutInProgress value)? logoutInProgress,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LogoutSuccess implements AuthState {
  const factory _LogoutSuccess() = _$LogoutSuccessImpl;
}

/// @nodoc
abstract class _$$LogoutFailureImplCopyWith<$Res> {
  factory _$$LogoutFailureImplCopyWith(
    _$LogoutFailureImpl value,
    $Res Function(_$LogoutFailureImpl) then,
  ) = __$$LogoutFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LogoutFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutFailureImpl>
    implements _$$LogoutFailureImplCopyWith<$Res> {
  __$$LogoutFailureImplCopyWithImpl(
    _$LogoutFailureImpl _value,
    $Res Function(_$LogoutFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$LogoutFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$LogoutFailureImpl
    with DiagnosticableTreeMixin
    implements _LogoutFailure {
  const _$LogoutFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.logoutFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.logoutFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutFailureImplCopyWith<_$LogoutFailureImpl> get copyWith =>
      __$$LogoutFailureImplCopyWithImpl<_$LogoutFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginInProgress,
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
    required TResult Function() logoutInProgress,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) logoutFailure,
  }) {
    return logoutFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginInProgress,
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
    TResult? Function()? logoutInProgress,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? logoutFailure,
  }) {
    return logoutFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginInProgress,
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    TResult Function()? logoutInProgress,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutFailure != null) {
      return logoutFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginInProgress value) loginInProgress,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
    required TResult Function(_LogoutInProgress value) logoutInProgress,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_LogoutFailure value) logoutFailure,
  }) {
    return logoutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginInProgress value)? loginInProgress,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
    TResult? Function(_LogoutInProgress value)? logoutInProgress,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_LogoutFailure value)? logoutFailure,
  }) {
    return logoutFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginInProgress value)? loginInProgress,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    TResult Function(_LogoutInProgress value)? logoutInProgress,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_LogoutFailure value)? logoutFailure,
    required TResult orElse(),
  }) {
    if (logoutFailure != null) {
      return logoutFailure(this);
    }
    return orElse();
  }
}

abstract class _LogoutFailure implements AuthState {
  const factory _LogoutFailure(final String message) = _$LogoutFailureImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutFailureImplCopyWith<_$LogoutFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
