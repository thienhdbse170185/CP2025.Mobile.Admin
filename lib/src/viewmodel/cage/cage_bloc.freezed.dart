// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCageList,
    required TResult Function(String cageId) getCage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCageList,
    TResult? Function(String cageId)? getCage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCageList,
    TResult Function(String cageId)? getCage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCageList value) getCageList,
    required TResult Function(_GetCageDetail value) getCage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCageList value)? getCageList,
    TResult? Function(_GetCageDetail value)? getCage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCageList value)? getCageList,
    TResult Function(_GetCageDetail value)? getCage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageEventCopyWith<$Res> {
  factory $CageEventCopyWith(CageEvent value, $Res Function(CageEvent) then) =
      _$CageEventCopyWithImpl<$Res, CageEvent>;
}

/// @nodoc
class _$CageEventCopyWithImpl<$Res, $Val extends CageEvent>
    implements $CageEventCopyWith<$Res> {
  _$CageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CageEvent
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
    extends _$CageEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CageEvent.started()';
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
    required TResult Function() getCageList,
    required TResult Function(String cageId) getCage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCageList,
    TResult? Function(String cageId)? getCage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCageList,
    TResult Function(String cageId)? getCage,
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
    required TResult Function(_GetCageList value) getCageList,
    required TResult Function(_GetCageDetail value) getCage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCageList value)? getCageList,
    TResult? Function(_GetCageDetail value)? getCage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCageList value)? getCageList,
    TResult Function(_GetCageDetail value)? getCage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CageEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCageListImplCopyWith<$Res> {
  factory _$$GetCageListImplCopyWith(
    _$GetCageListImpl value,
    $Res Function(_$GetCageListImpl) then,
  ) = __$$GetCageListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCageListImplCopyWithImpl<$Res>
    extends _$CageEventCopyWithImpl<$Res, _$GetCageListImpl>
    implements _$$GetCageListImplCopyWith<$Res> {
  __$$GetCageListImplCopyWithImpl(
    _$GetCageListImpl _value,
    $Res Function(_$GetCageListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCageListImpl implements _GetCageList {
  const _$GetCageListImpl();

  @override
  String toString() {
    return 'CageEvent.getCageList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCageListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCageList,
    required TResult Function(String cageId) getCage,
  }) {
    return getCageList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCageList,
    TResult? Function(String cageId)? getCage,
  }) {
    return getCageList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCageList,
    TResult Function(String cageId)? getCage,
    required TResult orElse(),
  }) {
    if (getCageList != null) {
      return getCageList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCageList value) getCageList,
    required TResult Function(_GetCageDetail value) getCage,
  }) {
    return getCageList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCageList value)? getCageList,
    TResult? Function(_GetCageDetail value)? getCage,
  }) {
    return getCageList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCageList value)? getCageList,
    TResult Function(_GetCageDetail value)? getCage,
    required TResult orElse(),
  }) {
    if (getCageList != null) {
      return getCageList(this);
    }
    return orElse();
  }
}

abstract class _GetCageList implements CageEvent {
  const factory _GetCageList() = _$GetCageListImpl;
}

/// @nodoc
abstract class _$$GetCageDetailImplCopyWith<$Res> {
  factory _$$GetCageDetailImplCopyWith(
    _$GetCageDetailImpl value,
    $Res Function(_$GetCageDetailImpl) then,
  ) = __$$GetCageDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cageId});
}

/// @nodoc
class __$$GetCageDetailImplCopyWithImpl<$Res>
    extends _$CageEventCopyWithImpl<$Res, _$GetCageDetailImpl>
    implements _$$GetCageDetailImplCopyWith<$Res> {
  __$$GetCageDetailImplCopyWithImpl(
    _$GetCageDetailImpl _value,
    $Res Function(_$GetCageDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cageId = null}) {
    return _then(
      _$GetCageDetailImpl(
        cageId:
            null == cageId
                ? _value.cageId
                : cageId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$GetCageDetailImpl implements _GetCageDetail {
  const _$GetCageDetailImpl({required this.cageId});

  @override
  final String cageId;

  @override
  String toString() {
    return 'CageEvent.getCage(cageId: $cageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCageDetailImpl &&
            (identical(other.cageId, cageId) || other.cageId == cageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cageId);

  /// Create a copy of CageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCageDetailImplCopyWith<_$GetCageDetailImpl> get copyWith =>
      __$$GetCageDetailImplCopyWithImpl<_$GetCageDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCageList,
    required TResult Function(String cageId) getCage,
  }) {
    return getCage(cageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCageList,
    TResult? Function(String cageId)? getCage,
  }) {
    return getCage?.call(cageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCageList,
    TResult Function(String cageId)? getCage,
    required TResult orElse(),
  }) {
    if (getCage != null) {
      return getCage(cageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCageList value) getCageList,
    required TResult Function(_GetCageDetail value) getCage,
  }) {
    return getCage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCageList value)? getCageList,
    TResult? Function(_GetCageDetail value)? getCage,
  }) {
    return getCage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCageList value)? getCageList,
    TResult Function(_GetCageDetail value)? getCage,
    required TResult orElse(),
  }) {
    if (getCage != null) {
      return getCage(this);
    }
    return orElse();
  }
}

abstract class _GetCageDetail implements CageEvent {
  const factory _GetCageDetail({required final String cageId}) =
      _$GetCageDetailImpl;

  String get cageId;

  /// Create a copy of CageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCageDetailImplCopyWith<_$GetCageDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCageListInProgress,
    required TResult Function(List<CageAdminDto> cages) getCageListSuccess,
    required TResult Function(String message) getCageListFailure,
    required TResult Function() getCageDetailInProgress,
    required TResult Function(CageAdminDto cage) getCageDetailSuccess,
    required TResult Function(String message) getCageDetailFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCageListInProgress,
    TResult? Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult? Function(String message)? getCageListFailure,
    TResult? Function()? getCageDetailInProgress,
    TResult? Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult? Function(String message)? getCageDetailFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCageListInProgress,
    TResult Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult Function(String message)? getCageListFailure,
    TResult Function()? getCageDetailInProgress,
    TResult Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult Function(String message)? getCageDetailFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCageListInProgress value)
    getCageListInProgress,
    required TResult Function(_GetCageListSuccess value) getCageListSuccess,
    required TResult Function(_GetCageListFailure value) getCageListFailure,
    required TResult Function(_GetCageDetailInProgress value)
    getCageDetailInProgress,
    required TResult Function(_GetCageDetailSuccess value) getCageDetailSuccess,
    required TResult Function(_GetCageDetailFailure value) getCageDetailFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult? Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult? Function(_GetCageListFailure value)? getCageListFailure,
    TResult? Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult? Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult? Function(_GetCageDetailFailure value)? getCageDetailFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult Function(_GetCageListFailure value)? getCageListFailure,
    TResult Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult Function(_GetCageDetailFailure value)? getCageDetailFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageStateCopyWith<$Res> {
  factory $CageStateCopyWith(CageState value, $Res Function(CageState) then) =
      _$CageStateCopyWithImpl<$Res, CageState>;
}

/// @nodoc
class _$CageStateCopyWithImpl<$Res, $Val extends CageState>
    implements $CageStateCopyWith<$Res> {
  _$CageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CageState
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
    extends _$CageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CageState.initial()';
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
    required TResult Function() getCageListInProgress,
    required TResult Function(List<CageAdminDto> cages) getCageListSuccess,
    required TResult Function(String message) getCageListFailure,
    required TResult Function() getCageDetailInProgress,
    required TResult Function(CageAdminDto cage) getCageDetailSuccess,
    required TResult Function(String message) getCageDetailFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCageListInProgress,
    TResult? Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult? Function(String message)? getCageListFailure,
    TResult? Function()? getCageDetailInProgress,
    TResult? Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult? Function(String message)? getCageDetailFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCageListInProgress,
    TResult Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult Function(String message)? getCageListFailure,
    TResult Function()? getCageDetailInProgress,
    TResult Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult Function(String message)? getCageDetailFailure,
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
    required TResult Function(_GetCageListInProgress value)
    getCageListInProgress,
    required TResult Function(_GetCageListSuccess value) getCageListSuccess,
    required TResult Function(_GetCageListFailure value) getCageListFailure,
    required TResult Function(_GetCageDetailInProgress value)
    getCageDetailInProgress,
    required TResult Function(_GetCageDetailSuccess value) getCageDetailSuccess,
    required TResult Function(_GetCageDetailFailure value) getCageDetailFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult? Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult? Function(_GetCageListFailure value)? getCageListFailure,
    TResult? Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult? Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult? Function(_GetCageDetailFailure value)? getCageDetailFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult Function(_GetCageListFailure value)? getCageListFailure,
    TResult Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult Function(_GetCageDetailFailure value)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CageState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetCageListInProgressImplCopyWith<$Res> {
  factory _$$GetCageListInProgressImplCopyWith(
    _$GetCageListInProgressImpl value,
    $Res Function(_$GetCageListInProgressImpl) then,
  ) = __$$GetCageListInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCageListInProgressImplCopyWithImpl<$Res>
    extends _$CageStateCopyWithImpl<$Res, _$GetCageListInProgressImpl>
    implements _$$GetCageListInProgressImplCopyWith<$Res> {
  __$$GetCageListInProgressImplCopyWithImpl(
    _$GetCageListInProgressImpl _value,
    $Res Function(_$GetCageListInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCageListInProgressImpl implements _GetCageListInProgress {
  const _$GetCageListInProgressImpl();

  @override
  String toString() {
    return 'CageState.getCageListInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCageListInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCageListInProgress,
    required TResult Function(List<CageAdminDto> cages) getCageListSuccess,
    required TResult Function(String message) getCageListFailure,
    required TResult Function() getCageDetailInProgress,
    required TResult Function(CageAdminDto cage) getCageDetailSuccess,
    required TResult Function(String message) getCageDetailFailure,
  }) {
    return getCageListInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCageListInProgress,
    TResult? Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult? Function(String message)? getCageListFailure,
    TResult? Function()? getCageDetailInProgress,
    TResult? Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult? Function(String message)? getCageDetailFailure,
  }) {
    return getCageListInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCageListInProgress,
    TResult Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult Function(String message)? getCageListFailure,
    TResult Function()? getCageDetailInProgress,
    TResult Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult Function(String message)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageListInProgress != null) {
      return getCageListInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCageListInProgress value)
    getCageListInProgress,
    required TResult Function(_GetCageListSuccess value) getCageListSuccess,
    required TResult Function(_GetCageListFailure value) getCageListFailure,
    required TResult Function(_GetCageDetailInProgress value)
    getCageDetailInProgress,
    required TResult Function(_GetCageDetailSuccess value) getCageDetailSuccess,
    required TResult Function(_GetCageDetailFailure value) getCageDetailFailure,
  }) {
    return getCageListInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult? Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult? Function(_GetCageListFailure value)? getCageListFailure,
    TResult? Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult? Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult? Function(_GetCageDetailFailure value)? getCageDetailFailure,
  }) {
    return getCageListInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult Function(_GetCageListFailure value)? getCageListFailure,
    TResult Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult Function(_GetCageDetailFailure value)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageListInProgress != null) {
      return getCageListInProgress(this);
    }
    return orElse();
  }
}

abstract class _GetCageListInProgress implements CageState {
  const factory _GetCageListInProgress() = _$GetCageListInProgressImpl;
}

/// @nodoc
abstract class _$$GetCageListSuccessImplCopyWith<$Res> {
  factory _$$GetCageListSuccessImplCopyWith(
    _$GetCageListSuccessImpl value,
    $Res Function(_$GetCageListSuccessImpl) then,
  ) = __$$GetCageListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CageAdminDto> cages});
}

/// @nodoc
class __$$GetCageListSuccessImplCopyWithImpl<$Res>
    extends _$CageStateCopyWithImpl<$Res, _$GetCageListSuccessImpl>
    implements _$$GetCageListSuccessImplCopyWith<$Res> {
  __$$GetCageListSuccessImplCopyWithImpl(
    _$GetCageListSuccessImpl _value,
    $Res Function(_$GetCageListSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cages = null}) {
    return _then(
      _$GetCageListSuccessImpl(
        null == cages
            ? _value._cages
            : cages // ignore: cast_nullable_to_non_nullable
                as List<CageAdminDto>,
      ),
    );
  }
}

/// @nodoc

class _$GetCageListSuccessImpl implements _GetCageListSuccess {
  const _$GetCageListSuccessImpl(final List<CageAdminDto> cages)
    : _cages = cages;

  final List<CageAdminDto> _cages;
  @override
  List<CageAdminDto> get cages {
    if (_cages is EqualUnmodifiableListView) return _cages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cages);
  }

  @override
  String toString() {
    return 'CageState.getCageListSuccess(cages: $cages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCageListSuccessImpl &&
            const DeepCollectionEquality().equals(other._cages, _cages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cages));

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCageListSuccessImplCopyWith<_$GetCageListSuccessImpl> get copyWith =>
      __$$GetCageListSuccessImplCopyWithImpl<_$GetCageListSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCageListInProgress,
    required TResult Function(List<CageAdminDto> cages) getCageListSuccess,
    required TResult Function(String message) getCageListFailure,
    required TResult Function() getCageDetailInProgress,
    required TResult Function(CageAdminDto cage) getCageDetailSuccess,
    required TResult Function(String message) getCageDetailFailure,
  }) {
    return getCageListSuccess(cages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCageListInProgress,
    TResult? Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult? Function(String message)? getCageListFailure,
    TResult? Function()? getCageDetailInProgress,
    TResult? Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult? Function(String message)? getCageDetailFailure,
  }) {
    return getCageListSuccess?.call(cages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCageListInProgress,
    TResult Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult Function(String message)? getCageListFailure,
    TResult Function()? getCageDetailInProgress,
    TResult Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult Function(String message)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageListSuccess != null) {
      return getCageListSuccess(cages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCageListInProgress value)
    getCageListInProgress,
    required TResult Function(_GetCageListSuccess value) getCageListSuccess,
    required TResult Function(_GetCageListFailure value) getCageListFailure,
    required TResult Function(_GetCageDetailInProgress value)
    getCageDetailInProgress,
    required TResult Function(_GetCageDetailSuccess value) getCageDetailSuccess,
    required TResult Function(_GetCageDetailFailure value) getCageDetailFailure,
  }) {
    return getCageListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult? Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult? Function(_GetCageListFailure value)? getCageListFailure,
    TResult? Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult? Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult? Function(_GetCageDetailFailure value)? getCageDetailFailure,
  }) {
    return getCageListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult Function(_GetCageListFailure value)? getCageListFailure,
    TResult Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult Function(_GetCageDetailFailure value)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageListSuccess != null) {
      return getCageListSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCageListSuccess implements CageState {
  const factory _GetCageListSuccess(final List<CageAdminDto> cages) =
      _$GetCageListSuccessImpl;

  List<CageAdminDto> get cages;

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCageListSuccessImplCopyWith<_$GetCageListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCageListFailureImplCopyWith<$Res> {
  factory _$$GetCageListFailureImplCopyWith(
    _$GetCageListFailureImpl value,
    $Res Function(_$GetCageListFailureImpl) then,
  ) = __$$GetCageListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetCageListFailureImplCopyWithImpl<$Res>
    extends _$CageStateCopyWithImpl<$Res, _$GetCageListFailureImpl>
    implements _$$GetCageListFailureImplCopyWith<$Res> {
  __$$GetCageListFailureImplCopyWithImpl(
    _$GetCageListFailureImpl _value,
    $Res Function(_$GetCageListFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$GetCageListFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetCageListFailureImpl implements _GetCageListFailure {
  const _$GetCageListFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CageState.getCageListFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCageListFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCageListFailureImplCopyWith<_$GetCageListFailureImpl> get copyWith =>
      __$$GetCageListFailureImplCopyWithImpl<_$GetCageListFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCageListInProgress,
    required TResult Function(List<CageAdminDto> cages) getCageListSuccess,
    required TResult Function(String message) getCageListFailure,
    required TResult Function() getCageDetailInProgress,
    required TResult Function(CageAdminDto cage) getCageDetailSuccess,
    required TResult Function(String message) getCageDetailFailure,
  }) {
    return getCageListFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCageListInProgress,
    TResult? Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult? Function(String message)? getCageListFailure,
    TResult? Function()? getCageDetailInProgress,
    TResult? Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult? Function(String message)? getCageDetailFailure,
  }) {
    return getCageListFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCageListInProgress,
    TResult Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult Function(String message)? getCageListFailure,
    TResult Function()? getCageDetailInProgress,
    TResult Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult Function(String message)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageListFailure != null) {
      return getCageListFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCageListInProgress value)
    getCageListInProgress,
    required TResult Function(_GetCageListSuccess value) getCageListSuccess,
    required TResult Function(_GetCageListFailure value) getCageListFailure,
    required TResult Function(_GetCageDetailInProgress value)
    getCageDetailInProgress,
    required TResult Function(_GetCageDetailSuccess value) getCageDetailSuccess,
    required TResult Function(_GetCageDetailFailure value) getCageDetailFailure,
  }) {
    return getCageListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult? Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult? Function(_GetCageListFailure value)? getCageListFailure,
    TResult? Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult? Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult? Function(_GetCageDetailFailure value)? getCageDetailFailure,
  }) {
    return getCageListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult Function(_GetCageListFailure value)? getCageListFailure,
    TResult Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult Function(_GetCageDetailFailure value)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageListFailure != null) {
      return getCageListFailure(this);
    }
    return orElse();
  }
}

abstract class _GetCageListFailure implements CageState {
  const factory _GetCageListFailure(final String message) =
      _$GetCageListFailureImpl;

  String get message;

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCageListFailureImplCopyWith<_$GetCageListFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCageDetailInProgressImplCopyWith<$Res> {
  factory _$$GetCageDetailInProgressImplCopyWith(
    _$GetCageDetailInProgressImpl value,
    $Res Function(_$GetCageDetailInProgressImpl) then,
  ) = __$$GetCageDetailInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCageDetailInProgressImplCopyWithImpl<$Res>
    extends _$CageStateCopyWithImpl<$Res, _$GetCageDetailInProgressImpl>
    implements _$$GetCageDetailInProgressImplCopyWith<$Res> {
  __$$GetCageDetailInProgressImplCopyWithImpl(
    _$GetCageDetailInProgressImpl _value,
    $Res Function(_$GetCageDetailInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCageDetailInProgressImpl implements _GetCageDetailInProgress {
  const _$GetCageDetailInProgressImpl();

  @override
  String toString() {
    return 'CageState.getCageDetailInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCageDetailInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCageListInProgress,
    required TResult Function(List<CageAdminDto> cages) getCageListSuccess,
    required TResult Function(String message) getCageListFailure,
    required TResult Function() getCageDetailInProgress,
    required TResult Function(CageAdminDto cage) getCageDetailSuccess,
    required TResult Function(String message) getCageDetailFailure,
  }) {
    return getCageDetailInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCageListInProgress,
    TResult? Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult? Function(String message)? getCageListFailure,
    TResult? Function()? getCageDetailInProgress,
    TResult? Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult? Function(String message)? getCageDetailFailure,
  }) {
    return getCageDetailInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCageListInProgress,
    TResult Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult Function(String message)? getCageListFailure,
    TResult Function()? getCageDetailInProgress,
    TResult Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult Function(String message)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageDetailInProgress != null) {
      return getCageDetailInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCageListInProgress value)
    getCageListInProgress,
    required TResult Function(_GetCageListSuccess value) getCageListSuccess,
    required TResult Function(_GetCageListFailure value) getCageListFailure,
    required TResult Function(_GetCageDetailInProgress value)
    getCageDetailInProgress,
    required TResult Function(_GetCageDetailSuccess value) getCageDetailSuccess,
    required TResult Function(_GetCageDetailFailure value) getCageDetailFailure,
  }) {
    return getCageDetailInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult? Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult? Function(_GetCageListFailure value)? getCageListFailure,
    TResult? Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult? Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult? Function(_GetCageDetailFailure value)? getCageDetailFailure,
  }) {
    return getCageDetailInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult Function(_GetCageListFailure value)? getCageListFailure,
    TResult Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult Function(_GetCageDetailFailure value)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageDetailInProgress != null) {
      return getCageDetailInProgress(this);
    }
    return orElse();
  }
}

abstract class _GetCageDetailInProgress implements CageState {
  const factory _GetCageDetailInProgress() = _$GetCageDetailInProgressImpl;
}

/// @nodoc
abstract class _$$GetCageDetailSuccessImplCopyWith<$Res> {
  factory _$$GetCageDetailSuccessImplCopyWith(
    _$GetCageDetailSuccessImpl value,
    $Res Function(_$GetCageDetailSuccessImpl) then,
  ) = __$$GetCageDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CageAdminDto cage});

  $CageAdminDtoCopyWith<$Res> get cage;
}

/// @nodoc
class __$$GetCageDetailSuccessImplCopyWithImpl<$Res>
    extends _$CageStateCopyWithImpl<$Res, _$GetCageDetailSuccessImpl>
    implements _$$GetCageDetailSuccessImplCopyWith<$Res> {
  __$$GetCageDetailSuccessImplCopyWithImpl(
    _$GetCageDetailSuccessImpl _value,
    $Res Function(_$GetCageDetailSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cage = null}) {
    return _then(
      _$GetCageDetailSuccessImpl(
        null == cage
            ? _value.cage
            : cage // ignore: cast_nullable_to_non_nullable
                as CageAdminDto,
      ),
    );
  }

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CageAdminDtoCopyWith<$Res> get cage {
    return $CageAdminDtoCopyWith<$Res>(_value.cage, (value) {
      return _then(_value.copyWith(cage: value));
    });
  }
}

/// @nodoc

class _$GetCageDetailSuccessImpl implements _GetCageDetailSuccess {
  const _$GetCageDetailSuccessImpl(this.cage);

  @override
  final CageAdminDto cage;

  @override
  String toString() {
    return 'CageState.getCageDetailSuccess(cage: $cage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCageDetailSuccessImpl &&
            (identical(other.cage, cage) || other.cage == cage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cage);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCageDetailSuccessImplCopyWith<_$GetCageDetailSuccessImpl>
  get copyWith =>
      __$$GetCageDetailSuccessImplCopyWithImpl<_$GetCageDetailSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCageListInProgress,
    required TResult Function(List<CageAdminDto> cages) getCageListSuccess,
    required TResult Function(String message) getCageListFailure,
    required TResult Function() getCageDetailInProgress,
    required TResult Function(CageAdminDto cage) getCageDetailSuccess,
    required TResult Function(String message) getCageDetailFailure,
  }) {
    return getCageDetailSuccess(cage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCageListInProgress,
    TResult? Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult? Function(String message)? getCageListFailure,
    TResult? Function()? getCageDetailInProgress,
    TResult? Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult? Function(String message)? getCageDetailFailure,
  }) {
    return getCageDetailSuccess?.call(cage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCageListInProgress,
    TResult Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult Function(String message)? getCageListFailure,
    TResult Function()? getCageDetailInProgress,
    TResult Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult Function(String message)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageDetailSuccess != null) {
      return getCageDetailSuccess(cage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCageListInProgress value)
    getCageListInProgress,
    required TResult Function(_GetCageListSuccess value) getCageListSuccess,
    required TResult Function(_GetCageListFailure value) getCageListFailure,
    required TResult Function(_GetCageDetailInProgress value)
    getCageDetailInProgress,
    required TResult Function(_GetCageDetailSuccess value) getCageDetailSuccess,
    required TResult Function(_GetCageDetailFailure value) getCageDetailFailure,
  }) {
    return getCageDetailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult? Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult? Function(_GetCageListFailure value)? getCageListFailure,
    TResult? Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult? Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult? Function(_GetCageDetailFailure value)? getCageDetailFailure,
  }) {
    return getCageDetailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult Function(_GetCageListFailure value)? getCageListFailure,
    TResult Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult Function(_GetCageDetailFailure value)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageDetailSuccess != null) {
      return getCageDetailSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCageDetailSuccess implements CageState {
  const factory _GetCageDetailSuccess(final CageAdminDto cage) =
      _$GetCageDetailSuccessImpl;

  CageAdminDto get cage;

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCageDetailSuccessImplCopyWith<_$GetCageDetailSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCageDetailFailureImplCopyWith<$Res> {
  factory _$$GetCageDetailFailureImplCopyWith(
    _$GetCageDetailFailureImpl value,
    $Res Function(_$GetCageDetailFailureImpl) then,
  ) = __$$GetCageDetailFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetCageDetailFailureImplCopyWithImpl<$Res>
    extends _$CageStateCopyWithImpl<$Res, _$GetCageDetailFailureImpl>
    implements _$$GetCageDetailFailureImplCopyWith<$Res> {
  __$$GetCageDetailFailureImplCopyWithImpl(
    _$GetCageDetailFailureImpl _value,
    $Res Function(_$GetCageDetailFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$GetCageDetailFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetCageDetailFailureImpl implements _GetCageDetailFailure {
  const _$GetCageDetailFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CageState.getCageDetailFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCageDetailFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCageDetailFailureImplCopyWith<_$GetCageDetailFailureImpl>
  get copyWith =>
      __$$GetCageDetailFailureImplCopyWithImpl<_$GetCageDetailFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCageListInProgress,
    required TResult Function(List<CageAdminDto> cages) getCageListSuccess,
    required TResult Function(String message) getCageListFailure,
    required TResult Function() getCageDetailInProgress,
    required TResult Function(CageAdminDto cage) getCageDetailSuccess,
    required TResult Function(String message) getCageDetailFailure,
  }) {
    return getCageDetailFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCageListInProgress,
    TResult? Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult? Function(String message)? getCageListFailure,
    TResult? Function()? getCageDetailInProgress,
    TResult? Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult? Function(String message)? getCageDetailFailure,
  }) {
    return getCageDetailFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCageListInProgress,
    TResult Function(List<CageAdminDto> cages)? getCageListSuccess,
    TResult Function(String message)? getCageListFailure,
    TResult Function()? getCageDetailInProgress,
    TResult Function(CageAdminDto cage)? getCageDetailSuccess,
    TResult Function(String message)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageDetailFailure != null) {
      return getCageDetailFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetCageListInProgress value)
    getCageListInProgress,
    required TResult Function(_GetCageListSuccess value) getCageListSuccess,
    required TResult Function(_GetCageListFailure value) getCageListFailure,
    required TResult Function(_GetCageDetailInProgress value)
    getCageDetailInProgress,
    required TResult Function(_GetCageDetailSuccess value) getCageDetailSuccess,
    required TResult Function(_GetCageDetailFailure value) getCageDetailFailure,
  }) {
    return getCageDetailFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult? Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult? Function(_GetCageListFailure value)? getCageListFailure,
    TResult? Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult? Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult? Function(_GetCageDetailFailure value)? getCageDetailFailure,
  }) {
    return getCageDetailFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetCageListInProgress value)? getCageListInProgress,
    TResult Function(_GetCageListSuccess value)? getCageListSuccess,
    TResult Function(_GetCageListFailure value)? getCageListFailure,
    TResult Function(_GetCageDetailInProgress value)? getCageDetailInProgress,
    TResult Function(_GetCageDetailSuccess value)? getCageDetailSuccess,
    TResult Function(_GetCageDetailFailure value)? getCageDetailFailure,
    required TResult orElse(),
  }) {
    if (getCageDetailFailure != null) {
      return getCageDetailFailure(this);
    }
    return orElse();
  }
}

abstract class _GetCageDetailFailure implements CageState {
  const factory _GetCageDetailFailure(final String message) =
      _$GetCageDetailFailureImpl;

  String get message;

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCageDetailFailureImplCopyWith<_$GetCageDetailFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}
