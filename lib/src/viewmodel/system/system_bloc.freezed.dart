// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SystemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setupOnAppStart,
    required TResult Function() appStarted,
    required TResult Function() getServerTime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setupOnAppStart,
    TResult? Function()? appStarted,
    TResult? Function()? getServerTime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setupOnAppStart,
    TResult Function()? appStarted,
    TResult Function()? getServerTime,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetupOnAppStart value) setupOnAppStart,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_GetServerTime value) getServerTime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_GetServerTime value)? getServerTime,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_GetServerTime value)? getServerTime,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemEventCopyWith<$Res> {
  factory $SystemEventCopyWith(
    SystemEvent value,
    $Res Function(SystemEvent) then,
  ) = _$SystemEventCopyWithImpl<$Res, SystemEvent>;
}

/// @nodoc
class _$SystemEventCopyWithImpl<$Res, $Val extends SystemEvent>
    implements $SystemEventCopyWith<$Res> {
  _$SystemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemEvent
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
    extends _$SystemEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SystemEvent.started()';
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
    required TResult Function() setupOnAppStart,
    required TResult Function() appStarted,
    required TResult Function() getServerTime,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setupOnAppStart,
    TResult? Function()? appStarted,
    TResult? Function()? getServerTime,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setupOnAppStart,
    TResult Function()? appStarted,
    TResult Function()? getServerTime,
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
    required TResult Function(_SetupOnAppStart value) setupOnAppStart,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_GetServerTime value) getServerTime,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_GetServerTime value)? getServerTime,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_GetServerTime value)? getServerTime,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SystemEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetupOnAppStartImplCopyWith<$Res> {
  factory _$$SetupOnAppStartImplCopyWith(
    _$SetupOnAppStartImpl value,
    $Res Function(_$SetupOnAppStartImpl) then,
  ) = __$$SetupOnAppStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetupOnAppStartImplCopyWithImpl<$Res>
    extends _$SystemEventCopyWithImpl<$Res, _$SetupOnAppStartImpl>
    implements _$$SetupOnAppStartImplCopyWith<$Res> {
  __$$SetupOnAppStartImplCopyWithImpl(
    _$SetupOnAppStartImpl _value,
    $Res Function(_$SetupOnAppStartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetupOnAppStartImpl implements _SetupOnAppStart {
  const _$SetupOnAppStartImpl();

  @override
  String toString() {
    return 'SystemEvent.setupOnAppStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetupOnAppStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setupOnAppStart,
    required TResult Function() appStarted,
    required TResult Function() getServerTime,
  }) {
    return setupOnAppStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setupOnAppStart,
    TResult? Function()? appStarted,
    TResult? Function()? getServerTime,
  }) {
    return setupOnAppStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setupOnAppStart,
    TResult Function()? appStarted,
    TResult Function()? getServerTime,
    required TResult orElse(),
  }) {
    if (setupOnAppStart != null) {
      return setupOnAppStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetupOnAppStart value) setupOnAppStart,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_GetServerTime value) getServerTime,
  }) {
    return setupOnAppStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_GetServerTime value)? getServerTime,
  }) {
    return setupOnAppStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_GetServerTime value)? getServerTime,
    required TResult orElse(),
  }) {
    if (setupOnAppStart != null) {
      return setupOnAppStart(this);
    }
    return orElse();
  }
}

abstract class _SetupOnAppStart implements SystemEvent {
  const factory _SetupOnAppStart() = _$SetupOnAppStartImpl;
}

/// @nodoc
abstract class _$$AppStartedImplCopyWith<$Res> {
  factory _$$AppStartedImplCopyWith(
    _$AppStartedImpl value,
    $Res Function(_$AppStartedImpl) then,
  ) = __$$AppStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedImplCopyWithImpl<$Res>
    extends _$SystemEventCopyWithImpl<$Res, _$AppStartedImpl>
    implements _$$AppStartedImplCopyWith<$Res> {
  __$$AppStartedImplCopyWithImpl(
    _$AppStartedImpl _value,
    $Res Function(_$AppStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStartedImpl implements _AppStarted {
  const _$AppStartedImpl();

  @override
  String toString() {
    return 'SystemEvent.appStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setupOnAppStart,
    required TResult Function() appStarted,
    required TResult Function() getServerTime,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setupOnAppStart,
    TResult? Function()? appStarted,
    TResult? Function()? getServerTime,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setupOnAppStart,
    TResult Function()? appStarted,
    TResult Function()? getServerTime,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetupOnAppStart value) setupOnAppStart,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_GetServerTime value) getServerTime,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_GetServerTime value)? getServerTime,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_GetServerTime value)? getServerTime,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AppStarted implements SystemEvent {
  const factory _AppStarted() = _$AppStartedImpl;
}

/// @nodoc
abstract class _$$GetServerTimeImplCopyWith<$Res> {
  factory _$$GetServerTimeImplCopyWith(
    _$GetServerTimeImpl value,
    $Res Function(_$GetServerTimeImpl) then,
  ) = __$$GetServerTimeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServerTimeImplCopyWithImpl<$Res>
    extends _$SystemEventCopyWithImpl<$Res, _$GetServerTimeImpl>
    implements _$$GetServerTimeImplCopyWith<$Res> {
  __$$GetServerTimeImplCopyWithImpl(
    _$GetServerTimeImpl _value,
    $Res Function(_$GetServerTimeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetServerTimeImpl implements _GetServerTime {
  const _$GetServerTimeImpl();

  @override
  String toString() {
    return 'SystemEvent.getServerTime()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetServerTimeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() setupOnAppStart,
    required TResult Function() appStarted,
    required TResult Function() getServerTime,
  }) {
    return getServerTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? setupOnAppStart,
    TResult? Function()? appStarted,
    TResult? Function()? getServerTime,
  }) {
    return getServerTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? setupOnAppStart,
    TResult Function()? appStarted,
    TResult Function()? getServerTime,
    required TResult orElse(),
  }) {
    if (getServerTime != null) {
      return getServerTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetupOnAppStart value) setupOnAppStart,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_GetServerTime value) getServerTime,
  }) {
    return getServerTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_GetServerTime value)? getServerTime,
  }) {
    return getServerTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetupOnAppStart value)? setupOnAppStart,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_GetServerTime value)? getServerTime,
    required TResult orElse(),
  }) {
    if (getServerTime != null) {
      return getServerTime(this);
    }
    return orElse();
  }
}

abstract class _GetServerTime implements SystemEvent {
  const factory _GetServerTime() = _$GetServerTimeImpl;
}

/// @nodoc
mixin _$SystemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appStartedInProgress,
    required TResult Function() appStartedSuccess,
    required TResult Function(String message) appStartedFailure,
    required TResult Function() setupOnAppStartInProgress,
    required TResult Function() setupOnAppStartSuccess,
    required TResult Function(String message) setupOnAppStartFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? appStartedInProgress,
    TResult? Function()? appStartedSuccess,
    TResult? Function(String message)? appStartedFailure,
    TResult? Function()? setupOnAppStartInProgress,
    TResult? Function()? setupOnAppStartSuccess,
    TResult? Function(String message)? setupOnAppStartFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appStartedInProgress,
    TResult Function()? appStartedSuccess,
    TResult Function(String message)? appStartedFailure,
    TResult Function()? setupOnAppStartInProgress,
    TResult Function()? setupOnAppStartSuccess,
    TResult Function(String message)? setupOnAppStartFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppStartedInProgress value) appStartedInProgress,
    required TResult Function(_AppStartedSuccess value) appStartedSuccess,
    required TResult Function(_AppStartedFailure value) appStartedFailure,
    required TResult Function(_SetupOnAppStartInProgress value)
    setupOnAppStartInProgress,
    required TResult Function(_SetupOnAppStartSuccess value)
    setupOnAppStartSuccess,
    required TResult Function(_SetupOnAppStartFailure value)
    setupOnAppStartFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult? Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult? Function(_AppStartedFailure value)? appStartedFailure,
    TResult? Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult? Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult? Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult Function(_AppStartedFailure value)? appStartedFailure,
    TResult Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemStateCopyWith<$Res> {
  factory $SystemStateCopyWith(
    SystemState value,
    $Res Function(SystemState) then,
  ) = _$SystemStateCopyWithImpl<$Res, SystemState>;
}

/// @nodoc
class _$SystemStateCopyWithImpl<$Res, $Val extends SystemState>
    implements $SystemStateCopyWith<$Res> {
  _$SystemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemState
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
    extends _$SystemStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SystemState.initial()';
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
    required TResult Function() appStartedInProgress,
    required TResult Function() appStartedSuccess,
    required TResult Function(String message) appStartedFailure,
    required TResult Function() setupOnAppStartInProgress,
    required TResult Function() setupOnAppStartSuccess,
    required TResult Function(String message) setupOnAppStartFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? appStartedInProgress,
    TResult? Function()? appStartedSuccess,
    TResult? Function(String message)? appStartedFailure,
    TResult? Function()? setupOnAppStartInProgress,
    TResult? Function()? setupOnAppStartSuccess,
    TResult? Function(String message)? setupOnAppStartFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appStartedInProgress,
    TResult Function()? appStartedSuccess,
    TResult Function(String message)? appStartedFailure,
    TResult Function()? setupOnAppStartInProgress,
    TResult Function()? setupOnAppStartSuccess,
    TResult Function(String message)? setupOnAppStartFailure,
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
    required TResult Function(_AppStartedInProgress value) appStartedInProgress,
    required TResult Function(_AppStartedSuccess value) appStartedSuccess,
    required TResult Function(_AppStartedFailure value) appStartedFailure,
    required TResult Function(_SetupOnAppStartInProgress value)
    setupOnAppStartInProgress,
    required TResult Function(_SetupOnAppStartSuccess value)
    setupOnAppStartSuccess,
    required TResult Function(_SetupOnAppStartFailure value)
    setupOnAppStartFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult? Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult? Function(_AppStartedFailure value)? appStartedFailure,
    TResult? Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult? Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult? Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult Function(_AppStartedFailure value)? appStartedFailure,
    TResult Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SystemState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AppStartedInProgressImplCopyWith<$Res> {
  factory _$$AppStartedInProgressImplCopyWith(
    _$AppStartedInProgressImpl value,
    $Res Function(_$AppStartedInProgressImpl) then,
  ) = __$$AppStartedInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedInProgressImplCopyWithImpl<$Res>
    extends _$SystemStateCopyWithImpl<$Res, _$AppStartedInProgressImpl>
    implements _$$AppStartedInProgressImplCopyWith<$Res> {
  __$$AppStartedInProgressImplCopyWithImpl(
    _$AppStartedInProgressImpl _value,
    $Res Function(_$AppStartedInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStartedInProgressImpl implements _AppStartedInProgress {
  const _$AppStartedInProgressImpl();

  @override
  String toString() {
    return 'SystemState.appStartedInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStartedInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appStartedInProgress,
    required TResult Function() appStartedSuccess,
    required TResult Function(String message) appStartedFailure,
    required TResult Function() setupOnAppStartInProgress,
    required TResult Function() setupOnAppStartSuccess,
    required TResult Function(String message) setupOnAppStartFailure,
  }) {
    return appStartedInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? appStartedInProgress,
    TResult? Function()? appStartedSuccess,
    TResult? Function(String message)? appStartedFailure,
    TResult? Function()? setupOnAppStartInProgress,
    TResult? Function()? setupOnAppStartSuccess,
    TResult? Function(String message)? setupOnAppStartFailure,
  }) {
    return appStartedInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appStartedInProgress,
    TResult Function()? appStartedSuccess,
    TResult Function(String message)? appStartedFailure,
    TResult Function()? setupOnAppStartInProgress,
    TResult Function()? setupOnAppStartSuccess,
    TResult Function(String message)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (appStartedInProgress != null) {
      return appStartedInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppStartedInProgress value) appStartedInProgress,
    required TResult Function(_AppStartedSuccess value) appStartedSuccess,
    required TResult Function(_AppStartedFailure value) appStartedFailure,
    required TResult Function(_SetupOnAppStartInProgress value)
    setupOnAppStartInProgress,
    required TResult Function(_SetupOnAppStartSuccess value)
    setupOnAppStartSuccess,
    required TResult Function(_SetupOnAppStartFailure value)
    setupOnAppStartFailure,
  }) {
    return appStartedInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult? Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult? Function(_AppStartedFailure value)? appStartedFailure,
    TResult? Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult? Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult? Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
  }) {
    return appStartedInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult Function(_AppStartedFailure value)? appStartedFailure,
    TResult Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (appStartedInProgress != null) {
      return appStartedInProgress(this);
    }
    return orElse();
  }
}

abstract class _AppStartedInProgress implements SystemState {
  const factory _AppStartedInProgress() = _$AppStartedInProgressImpl;
}

/// @nodoc
abstract class _$$AppStartedSuccessImplCopyWith<$Res> {
  factory _$$AppStartedSuccessImplCopyWith(
    _$AppStartedSuccessImpl value,
    $Res Function(_$AppStartedSuccessImpl) then,
  ) = __$$AppStartedSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedSuccessImplCopyWithImpl<$Res>
    extends _$SystemStateCopyWithImpl<$Res, _$AppStartedSuccessImpl>
    implements _$$AppStartedSuccessImplCopyWith<$Res> {
  __$$AppStartedSuccessImplCopyWithImpl(
    _$AppStartedSuccessImpl _value,
    $Res Function(_$AppStartedSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStartedSuccessImpl implements _AppStartedSuccess {
  const _$AppStartedSuccessImpl();

  @override
  String toString() {
    return 'SystemState.appStartedSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStartedSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appStartedInProgress,
    required TResult Function() appStartedSuccess,
    required TResult Function(String message) appStartedFailure,
    required TResult Function() setupOnAppStartInProgress,
    required TResult Function() setupOnAppStartSuccess,
    required TResult Function(String message) setupOnAppStartFailure,
  }) {
    return appStartedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? appStartedInProgress,
    TResult? Function()? appStartedSuccess,
    TResult? Function(String message)? appStartedFailure,
    TResult? Function()? setupOnAppStartInProgress,
    TResult? Function()? setupOnAppStartSuccess,
    TResult? Function(String message)? setupOnAppStartFailure,
  }) {
    return appStartedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appStartedInProgress,
    TResult Function()? appStartedSuccess,
    TResult Function(String message)? appStartedFailure,
    TResult Function()? setupOnAppStartInProgress,
    TResult Function()? setupOnAppStartSuccess,
    TResult Function(String message)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (appStartedSuccess != null) {
      return appStartedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppStartedInProgress value) appStartedInProgress,
    required TResult Function(_AppStartedSuccess value) appStartedSuccess,
    required TResult Function(_AppStartedFailure value) appStartedFailure,
    required TResult Function(_SetupOnAppStartInProgress value)
    setupOnAppStartInProgress,
    required TResult Function(_SetupOnAppStartSuccess value)
    setupOnAppStartSuccess,
    required TResult Function(_SetupOnAppStartFailure value)
    setupOnAppStartFailure,
  }) {
    return appStartedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult? Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult? Function(_AppStartedFailure value)? appStartedFailure,
    TResult? Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult? Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult? Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
  }) {
    return appStartedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult Function(_AppStartedFailure value)? appStartedFailure,
    TResult Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (appStartedSuccess != null) {
      return appStartedSuccess(this);
    }
    return orElse();
  }
}

abstract class _AppStartedSuccess implements SystemState {
  const factory _AppStartedSuccess() = _$AppStartedSuccessImpl;
}

/// @nodoc
abstract class _$$AppStartedFailureImplCopyWith<$Res> {
  factory _$$AppStartedFailureImplCopyWith(
    _$AppStartedFailureImpl value,
    $Res Function(_$AppStartedFailureImpl) then,
  ) = __$$AppStartedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AppStartedFailureImplCopyWithImpl<$Res>
    extends _$SystemStateCopyWithImpl<$Res, _$AppStartedFailureImpl>
    implements _$$AppStartedFailureImplCopyWith<$Res> {
  __$$AppStartedFailureImplCopyWithImpl(
    _$AppStartedFailureImpl _value,
    $Res Function(_$AppStartedFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$AppStartedFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$AppStartedFailureImpl implements _AppStartedFailure {
  const _$AppStartedFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SystemState.appStartedFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStartedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStartedFailureImplCopyWith<_$AppStartedFailureImpl> get copyWith =>
      __$$AppStartedFailureImplCopyWithImpl<_$AppStartedFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appStartedInProgress,
    required TResult Function() appStartedSuccess,
    required TResult Function(String message) appStartedFailure,
    required TResult Function() setupOnAppStartInProgress,
    required TResult Function() setupOnAppStartSuccess,
    required TResult Function(String message) setupOnAppStartFailure,
  }) {
    return appStartedFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? appStartedInProgress,
    TResult? Function()? appStartedSuccess,
    TResult? Function(String message)? appStartedFailure,
    TResult? Function()? setupOnAppStartInProgress,
    TResult? Function()? setupOnAppStartSuccess,
    TResult? Function(String message)? setupOnAppStartFailure,
  }) {
    return appStartedFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appStartedInProgress,
    TResult Function()? appStartedSuccess,
    TResult Function(String message)? appStartedFailure,
    TResult Function()? setupOnAppStartInProgress,
    TResult Function()? setupOnAppStartSuccess,
    TResult Function(String message)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (appStartedFailure != null) {
      return appStartedFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppStartedInProgress value) appStartedInProgress,
    required TResult Function(_AppStartedSuccess value) appStartedSuccess,
    required TResult Function(_AppStartedFailure value) appStartedFailure,
    required TResult Function(_SetupOnAppStartInProgress value)
    setupOnAppStartInProgress,
    required TResult Function(_SetupOnAppStartSuccess value)
    setupOnAppStartSuccess,
    required TResult Function(_SetupOnAppStartFailure value)
    setupOnAppStartFailure,
  }) {
    return appStartedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult? Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult? Function(_AppStartedFailure value)? appStartedFailure,
    TResult? Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult? Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult? Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
  }) {
    return appStartedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult Function(_AppStartedFailure value)? appStartedFailure,
    TResult Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (appStartedFailure != null) {
      return appStartedFailure(this);
    }
    return orElse();
  }
}

abstract class _AppStartedFailure implements SystemState {
  const factory _AppStartedFailure(final String message) =
      _$AppStartedFailureImpl;

  String get message;

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStartedFailureImplCopyWith<_$AppStartedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetupOnAppStartInProgressImplCopyWith<$Res> {
  factory _$$SetupOnAppStartInProgressImplCopyWith(
    _$SetupOnAppStartInProgressImpl value,
    $Res Function(_$SetupOnAppStartInProgressImpl) then,
  ) = __$$SetupOnAppStartInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetupOnAppStartInProgressImplCopyWithImpl<$Res>
    extends _$SystemStateCopyWithImpl<$Res, _$SetupOnAppStartInProgressImpl>
    implements _$$SetupOnAppStartInProgressImplCopyWith<$Res> {
  __$$SetupOnAppStartInProgressImplCopyWithImpl(
    _$SetupOnAppStartInProgressImpl _value,
    $Res Function(_$SetupOnAppStartInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetupOnAppStartInProgressImpl implements _SetupOnAppStartInProgress {
  const _$SetupOnAppStartInProgressImpl();

  @override
  String toString() {
    return 'SystemState.setupOnAppStartInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupOnAppStartInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appStartedInProgress,
    required TResult Function() appStartedSuccess,
    required TResult Function(String message) appStartedFailure,
    required TResult Function() setupOnAppStartInProgress,
    required TResult Function() setupOnAppStartSuccess,
    required TResult Function(String message) setupOnAppStartFailure,
  }) {
    return setupOnAppStartInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? appStartedInProgress,
    TResult? Function()? appStartedSuccess,
    TResult? Function(String message)? appStartedFailure,
    TResult? Function()? setupOnAppStartInProgress,
    TResult? Function()? setupOnAppStartSuccess,
    TResult? Function(String message)? setupOnAppStartFailure,
  }) {
    return setupOnAppStartInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appStartedInProgress,
    TResult Function()? appStartedSuccess,
    TResult Function(String message)? appStartedFailure,
    TResult Function()? setupOnAppStartInProgress,
    TResult Function()? setupOnAppStartSuccess,
    TResult Function(String message)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (setupOnAppStartInProgress != null) {
      return setupOnAppStartInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppStartedInProgress value) appStartedInProgress,
    required TResult Function(_AppStartedSuccess value) appStartedSuccess,
    required TResult Function(_AppStartedFailure value) appStartedFailure,
    required TResult Function(_SetupOnAppStartInProgress value)
    setupOnAppStartInProgress,
    required TResult Function(_SetupOnAppStartSuccess value)
    setupOnAppStartSuccess,
    required TResult Function(_SetupOnAppStartFailure value)
    setupOnAppStartFailure,
  }) {
    return setupOnAppStartInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult? Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult? Function(_AppStartedFailure value)? appStartedFailure,
    TResult? Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult? Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult? Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
  }) {
    return setupOnAppStartInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult Function(_AppStartedFailure value)? appStartedFailure,
    TResult Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (setupOnAppStartInProgress != null) {
      return setupOnAppStartInProgress(this);
    }
    return orElse();
  }
}

abstract class _SetupOnAppStartInProgress implements SystemState {
  const factory _SetupOnAppStartInProgress() = _$SetupOnAppStartInProgressImpl;
}

/// @nodoc
abstract class _$$SetupOnAppStartSuccessImplCopyWith<$Res> {
  factory _$$SetupOnAppStartSuccessImplCopyWith(
    _$SetupOnAppStartSuccessImpl value,
    $Res Function(_$SetupOnAppStartSuccessImpl) then,
  ) = __$$SetupOnAppStartSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetupOnAppStartSuccessImplCopyWithImpl<$Res>
    extends _$SystemStateCopyWithImpl<$Res, _$SetupOnAppStartSuccessImpl>
    implements _$$SetupOnAppStartSuccessImplCopyWith<$Res> {
  __$$SetupOnAppStartSuccessImplCopyWithImpl(
    _$SetupOnAppStartSuccessImpl _value,
    $Res Function(_$SetupOnAppStartSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetupOnAppStartSuccessImpl implements _SetupOnAppStartSuccess {
  const _$SetupOnAppStartSuccessImpl();

  @override
  String toString() {
    return 'SystemState.setupOnAppStartSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupOnAppStartSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appStartedInProgress,
    required TResult Function() appStartedSuccess,
    required TResult Function(String message) appStartedFailure,
    required TResult Function() setupOnAppStartInProgress,
    required TResult Function() setupOnAppStartSuccess,
    required TResult Function(String message) setupOnAppStartFailure,
  }) {
    return setupOnAppStartSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? appStartedInProgress,
    TResult? Function()? appStartedSuccess,
    TResult? Function(String message)? appStartedFailure,
    TResult? Function()? setupOnAppStartInProgress,
    TResult? Function()? setupOnAppStartSuccess,
    TResult? Function(String message)? setupOnAppStartFailure,
  }) {
    return setupOnAppStartSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appStartedInProgress,
    TResult Function()? appStartedSuccess,
    TResult Function(String message)? appStartedFailure,
    TResult Function()? setupOnAppStartInProgress,
    TResult Function()? setupOnAppStartSuccess,
    TResult Function(String message)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (setupOnAppStartSuccess != null) {
      return setupOnAppStartSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppStartedInProgress value) appStartedInProgress,
    required TResult Function(_AppStartedSuccess value) appStartedSuccess,
    required TResult Function(_AppStartedFailure value) appStartedFailure,
    required TResult Function(_SetupOnAppStartInProgress value)
    setupOnAppStartInProgress,
    required TResult Function(_SetupOnAppStartSuccess value)
    setupOnAppStartSuccess,
    required TResult Function(_SetupOnAppStartFailure value)
    setupOnAppStartFailure,
  }) {
    return setupOnAppStartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult? Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult? Function(_AppStartedFailure value)? appStartedFailure,
    TResult? Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult? Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult? Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
  }) {
    return setupOnAppStartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult Function(_AppStartedFailure value)? appStartedFailure,
    TResult Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (setupOnAppStartSuccess != null) {
      return setupOnAppStartSuccess(this);
    }
    return orElse();
  }
}

abstract class _SetupOnAppStartSuccess implements SystemState {
  const factory _SetupOnAppStartSuccess() = _$SetupOnAppStartSuccessImpl;
}

/// @nodoc
abstract class _$$SetupOnAppStartFailureImplCopyWith<$Res> {
  factory _$$SetupOnAppStartFailureImplCopyWith(
    _$SetupOnAppStartFailureImpl value,
    $Res Function(_$SetupOnAppStartFailureImpl) then,
  ) = __$$SetupOnAppStartFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SetupOnAppStartFailureImplCopyWithImpl<$Res>
    extends _$SystemStateCopyWithImpl<$Res, _$SetupOnAppStartFailureImpl>
    implements _$$SetupOnAppStartFailureImplCopyWith<$Res> {
  __$$SetupOnAppStartFailureImplCopyWithImpl(
    _$SetupOnAppStartFailureImpl _value,
    $Res Function(_$SetupOnAppStartFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SetupOnAppStartFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SetupOnAppStartFailureImpl implements _SetupOnAppStartFailure {
  const _$SetupOnAppStartFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SystemState.setupOnAppStartFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupOnAppStartFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupOnAppStartFailureImplCopyWith<_$SetupOnAppStartFailureImpl>
  get copyWith =>
      __$$SetupOnAppStartFailureImplCopyWithImpl<_$SetupOnAppStartFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appStartedInProgress,
    required TResult Function() appStartedSuccess,
    required TResult Function(String message) appStartedFailure,
    required TResult Function() setupOnAppStartInProgress,
    required TResult Function() setupOnAppStartSuccess,
    required TResult Function(String message) setupOnAppStartFailure,
  }) {
    return setupOnAppStartFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? appStartedInProgress,
    TResult? Function()? appStartedSuccess,
    TResult? Function(String message)? appStartedFailure,
    TResult? Function()? setupOnAppStartInProgress,
    TResult? Function()? setupOnAppStartSuccess,
    TResult? Function(String message)? setupOnAppStartFailure,
  }) {
    return setupOnAppStartFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appStartedInProgress,
    TResult Function()? appStartedSuccess,
    TResult Function(String message)? appStartedFailure,
    TResult Function()? setupOnAppStartInProgress,
    TResult Function()? setupOnAppStartSuccess,
    TResult Function(String message)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (setupOnAppStartFailure != null) {
      return setupOnAppStartFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppStartedInProgress value) appStartedInProgress,
    required TResult Function(_AppStartedSuccess value) appStartedSuccess,
    required TResult Function(_AppStartedFailure value) appStartedFailure,
    required TResult Function(_SetupOnAppStartInProgress value)
    setupOnAppStartInProgress,
    required TResult Function(_SetupOnAppStartSuccess value)
    setupOnAppStartSuccess,
    required TResult Function(_SetupOnAppStartFailure value)
    setupOnAppStartFailure,
  }) {
    return setupOnAppStartFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult? Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult? Function(_AppStartedFailure value)? appStartedFailure,
    TResult? Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult? Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult? Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
  }) {
    return setupOnAppStartFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppStartedInProgress value)? appStartedInProgress,
    TResult Function(_AppStartedSuccess value)? appStartedSuccess,
    TResult Function(_AppStartedFailure value)? appStartedFailure,
    TResult Function(_SetupOnAppStartInProgress value)?
    setupOnAppStartInProgress,
    TResult Function(_SetupOnAppStartSuccess value)? setupOnAppStartSuccess,
    TResult Function(_SetupOnAppStartFailure value)? setupOnAppStartFailure,
    required TResult orElse(),
  }) {
    if (setupOnAppStartFailure != null) {
      return setupOnAppStartFailure(this);
    }
    return orElse();
  }
}

abstract class _SetupOnAppStartFailure implements SystemState {
  const factory _SetupOnAppStartFailure(final String message) =
      _$SetupOnAppStartFailureImpl;

  String get message;

  /// Create a copy of SystemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetupOnAppStartFailureImplCopyWith<_$SetupOnAppStartFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}
