// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farming_batch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FarmingBatchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFarmingBatchesInProgress,
    required TResult Function(List<FarmingBatchDto> farmingBatches)
    getFarmingBatchesSuccess,
    required TResult Function(String error) getFarmingBatchesFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getFarmingBatchesInProgress,
    TResult? Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult? Function(String error)? getFarmingBatchesFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFarmingBatchesInProgress,
    TResult Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult Function(String error)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetFarmingBatchesInProgress value)
    getFarmingBatchesInProgress,
    required TResult Function(_GetFarmingBatchesSuccess value)
    getFarmingBatchesSuccess,
    required TResult Function(_GetFarmingBatchesFailure value)
    getFarmingBatchesFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult? Function(_GetFarmingBatchesSuccess value)?
    getFarmingBatchesSuccess,
    TResult? Function(_GetFarmingBatchesFailure value)?
    getFarmingBatchesFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult Function(_GetFarmingBatchesSuccess value)? getFarmingBatchesSuccess,
    TResult Function(_GetFarmingBatchesFailure value)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmingBatchStateCopyWith<$Res> {
  factory $FarmingBatchStateCopyWith(
    FarmingBatchState value,
    $Res Function(FarmingBatchState) then,
  ) = _$FarmingBatchStateCopyWithImpl<$Res, FarmingBatchState>;
}

/// @nodoc
class _$FarmingBatchStateCopyWithImpl<$Res, $Val extends FarmingBatchState>
    implements $FarmingBatchStateCopyWith<$Res> {
  _$FarmingBatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmingBatchState
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
    extends _$FarmingBatchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FarmingBatchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FarmingBatchState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FarmingBatchState.initial'));
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
    required TResult Function() getFarmingBatchesInProgress,
    required TResult Function(List<FarmingBatchDto> farmingBatches)
    getFarmingBatchesSuccess,
    required TResult Function(String error) getFarmingBatchesFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getFarmingBatchesInProgress,
    TResult? Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult? Function(String error)? getFarmingBatchesFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFarmingBatchesInProgress,
    TResult Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult Function(String error)? getFarmingBatchesFailure,
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
    required TResult Function(_GetFarmingBatchesInProgress value)
    getFarmingBatchesInProgress,
    required TResult Function(_GetFarmingBatchesSuccess value)
    getFarmingBatchesSuccess,
    required TResult Function(_GetFarmingBatchesFailure value)
    getFarmingBatchesFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult? Function(_GetFarmingBatchesSuccess value)?
    getFarmingBatchesSuccess,
    TResult? Function(_GetFarmingBatchesFailure value)?
    getFarmingBatchesFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult Function(_GetFarmingBatchesSuccess value)? getFarmingBatchesSuccess,
    TResult Function(_GetFarmingBatchesFailure value)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FarmingBatchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetFarmingBatchesInProgressImplCopyWith<$Res> {
  factory _$$GetFarmingBatchesInProgressImplCopyWith(
    _$GetFarmingBatchesInProgressImpl value,
    $Res Function(_$GetFarmingBatchesInProgressImpl) then,
  ) = __$$GetFarmingBatchesInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFarmingBatchesInProgressImplCopyWithImpl<$Res>
    extends
        _$FarmingBatchStateCopyWithImpl<$Res, _$GetFarmingBatchesInProgressImpl>
    implements _$$GetFarmingBatchesInProgressImplCopyWith<$Res> {
  __$$GetFarmingBatchesInProgressImplCopyWithImpl(
    _$GetFarmingBatchesInProgressImpl _value,
    $Res Function(_$GetFarmingBatchesInProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FarmingBatchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFarmingBatchesInProgressImpl
    with DiagnosticableTreeMixin
    implements _GetFarmingBatchesInProgress {
  const _$GetFarmingBatchesInProgressImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FarmingBatchState.getFarmingBatchesInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(
      DiagnosticsProperty(
        'type',
        'FarmingBatchState.getFarmingBatchesInProgress',
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFarmingBatchesInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFarmingBatchesInProgress,
    required TResult Function(List<FarmingBatchDto> farmingBatches)
    getFarmingBatchesSuccess,
    required TResult Function(String error) getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getFarmingBatchesInProgress,
    TResult? Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult? Function(String error)? getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFarmingBatchesInProgress,
    TResult Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult Function(String error)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) {
    if (getFarmingBatchesInProgress != null) {
      return getFarmingBatchesInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetFarmingBatchesInProgress value)
    getFarmingBatchesInProgress,
    required TResult Function(_GetFarmingBatchesSuccess value)
    getFarmingBatchesSuccess,
    required TResult Function(_GetFarmingBatchesFailure value)
    getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult? Function(_GetFarmingBatchesSuccess value)?
    getFarmingBatchesSuccess,
    TResult? Function(_GetFarmingBatchesFailure value)?
    getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult Function(_GetFarmingBatchesSuccess value)? getFarmingBatchesSuccess,
    TResult Function(_GetFarmingBatchesFailure value)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) {
    if (getFarmingBatchesInProgress != null) {
      return getFarmingBatchesInProgress(this);
    }
    return orElse();
  }
}

abstract class _GetFarmingBatchesInProgress implements FarmingBatchState {
  const factory _GetFarmingBatchesInProgress() =
      _$GetFarmingBatchesInProgressImpl;
}

/// @nodoc
abstract class _$$GetFarmingBatchesSuccessImplCopyWith<$Res> {
  factory _$$GetFarmingBatchesSuccessImplCopyWith(
    _$GetFarmingBatchesSuccessImpl value,
    $Res Function(_$GetFarmingBatchesSuccessImpl) then,
  ) = __$$GetFarmingBatchesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FarmingBatchDto> farmingBatches});
}

/// @nodoc
class __$$GetFarmingBatchesSuccessImplCopyWithImpl<$Res>
    extends
        _$FarmingBatchStateCopyWithImpl<$Res, _$GetFarmingBatchesSuccessImpl>
    implements _$$GetFarmingBatchesSuccessImplCopyWith<$Res> {
  __$$GetFarmingBatchesSuccessImplCopyWithImpl(
    _$GetFarmingBatchesSuccessImpl _value,
    $Res Function(_$GetFarmingBatchesSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FarmingBatchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? farmingBatches = null}) {
    return _then(
      _$GetFarmingBatchesSuccessImpl(
        farmingBatches:
            null == farmingBatches
                ? _value._farmingBatches
                : farmingBatches // ignore: cast_nullable_to_non_nullable
                    as List<FarmingBatchDto>,
      ),
    );
  }
}

/// @nodoc

class _$GetFarmingBatchesSuccessImpl
    with DiagnosticableTreeMixin
    implements _GetFarmingBatchesSuccess {
  const _$GetFarmingBatchesSuccessImpl({
    required final List<FarmingBatchDto> farmingBatches,
  }) : _farmingBatches = farmingBatches;

  final List<FarmingBatchDto> _farmingBatches;
  @override
  List<FarmingBatchDto> get farmingBatches {
    if (_farmingBatches is EqualUnmodifiableListView) return _farmingBatches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_farmingBatches);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FarmingBatchState.getFarmingBatchesSuccess(farmingBatches: $farmingBatches)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty(
          'type',
          'FarmingBatchState.getFarmingBatchesSuccess',
        ),
      )
      ..add(DiagnosticsProperty('farmingBatches', farmingBatches));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFarmingBatchesSuccessImpl &&
            const DeepCollectionEquality().equals(
              other._farmingBatches,
              _farmingBatches,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_farmingBatches),
  );

  /// Create a copy of FarmingBatchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFarmingBatchesSuccessImplCopyWith<_$GetFarmingBatchesSuccessImpl>
  get copyWith => __$$GetFarmingBatchesSuccessImplCopyWithImpl<
    _$GetFarmingBatchesSuccessImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFarmingBatchesInProgress,
    required TResult Function(List<FarmingBatchDto> farmingBatches)
    getFarmingBatchesSuccess,
    required TResult Function(String error) getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesSuccess(farmingBatches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getFarmingBatchesInProgress,
    TResult? Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult? Function(String error)? getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesSuccess?.call(farmingBatches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFarmingBatchesInProgress,
    TResult Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult Function(String error)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) {
    if (getFarmingBatchesSuccess != null) {
      return getFarmingBatchesSuccess(farmingBatches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetFarmingBatchesInProgress value)
    getFarmingBatchesInProgress,
    required TResult Function(_GetFarmingBatchesSuccess value)
    getFarmingBatchesSuccess,
    required TResult Function(_GetFarmingBatchesFailure value)
    getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult? Function(_GetFarmingBatchesSuccess value)?
    getFarmingBatchesSuccess,
    TResult? Function(_GetFarmingBatchesFailure value)?
    getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult Function(_GetFarmingBatchesSuccess value)? getFarmingBatchesSuccess,
    TResult Function(_GetFarmingBatchesFailure value)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) {
    if (getFarmingBatchesSuccess != null) {
      return getFarmingBatchesSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetFarmingBatchesSuccess implements FarmingBatchState {
  const factory _GetFarmingBatchesSuccess({
    required final List<FarmingBatchDto> farmingBatches,
  }) = _$GetFarmingBatchesSuccessImpl;

  List<FarmingBatchDto> get farmingBatches;

  /// Create a copy of FarmingBatchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFarmingBatchesSuccessImplCopyWith<_$GetFarmingBatchesSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFarmingBatchesFailureImplCopyWith<$Res> {
  factory _$$GetFarmingBatchesFailureImplCopyWith(
    _$GetFarmingBatchesFailureImpl value,
    $Res Function(_$GetFarmingBatchesFailureImpl) then,
  ) = __$$GetFarmingBatchesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetFarmingBatchesFailureImplCopyWithImpl<$Res>
    extends
        _$FarmingBatchStateCopyWithImpl<$Res, _$GetFarmingBatchesFailureImpl>
    implements _$$GetFarmingBatchesFailureImplCopyWith<$Res> {
  __$$GetFarmingBatchesFailureImplCopyWithImpl(
    _$GetFarmingBatchesFailureImpl _value,
    $Res Function(_$GetFarmingBatchesFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FarmingBatchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$GetFarmingBatchesFailureImpl(
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$GetFarmingBatchesFailureImpl
    with DiagnosticableTreeMixin
    implements _GetFarmingBatchesFailure {
  const _$GetFarmingBatchesFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FarmingBatchState.getFarmingBatchesFailure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty(
          'type',
          'FarmingBatchState.getFarmingBatchesFailure',
        ),
      )
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFarmingBatchesFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FarmingBatchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFarmingBatchesFailureImplCopyWith<_$GetFarmingBatchesFailureImpl>
  get copyWith => __$$GetFarmingBatchesFailureImplCopyWithImpl<
    _$GetFarmingBatchesFailureImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getFarmingBatchesInProgress,
    required TResult Function(List<FarmingBatchDto> farmingBatches)
    getFarmingBatchesSuccess,
    required TResult Function(String error) getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getFarmingBatchesInProgress,
    TResult? Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult? Function(String error)? getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getFarmingBatchesInProgress,
    TResult Function(List<FarmingBatchDto> farmingBatches)?
    getFarmingBatchesSuccess,
    TResult Function(String error)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) {
    if (getFarmingBatchesFailure != null) {
      return getFarmingBatchesFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetFarmingBatchesInProgress value)
    getFarmingBatchesInProgress,
    required TResult Function(_GetFarmingBatchesSuccess value)
    getFarmingBatchesSuccess,
    required TResult Function(_GetFarmingBatchesFailure value)
    getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult? Function(_GetFarmingBatchesSuccess value)?
    getFarmingBatchesSuccess,
    TResult? Function(_GetFarmingBatchesFailure value)?
    getFarmingBatchesFailure,
  }) {
    return getFarmingBatchesFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetFarmingBatchesInProgress value)?
    getFarmingBatchesInProgress,
    TResult Function(_GetFarmingBatchesSuccess value)? getFarmingBatchesSuccess,
    TResult Function(_GetFarmingBatchesFailure value)? getFarmingBatchesFailure,
    required TResult orElse(),
  }) {
    if (getFarmingBatchesFailure != null) {
      return getFarmingBatchesFailure(this);
    }
    return orElse();
  }
}

abstract class _GetFarmingBatchesFailure implements FarmingBatchState {
  const factory _GetFarmingBatchesFailure({required final String error}) =
      _$GetFarmingBatchesFailureImpl;

  String get error;

  /// Create a copy of FarmingBatchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFarmingBatchesFailureImplCopyWith<_$GetFarmingBatchesFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}
