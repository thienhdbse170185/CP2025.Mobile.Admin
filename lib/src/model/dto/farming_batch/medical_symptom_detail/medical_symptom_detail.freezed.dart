// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_symptom_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MedicalSymptomDetail _$MedicalSymptomDetailFromJson(Map<String, dynamic> json) {
  return _MedicalSymptomDetail.fromJson(json);
}

/// @nodoc
mixin _$MedicalSymptomDetail {
  String get id => throw _privateConstructorUsedError;
  String? get diagnosis => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get isEmergency => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int get affectedQuantity => throw _privateConstructorUsedError;
  int get quantityInCage => throw _privateConstructorUsedError;

  /// Serializes this MedicalSymptomDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicalSymptomDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicalSymptomDetailCopyWith<MedicalSymptomDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalSymptomDetailCopyWith<$Res> {
  factory $MedicalSymptomDetailCopyWith(
    MedicalSymptomDetail value,
    $Res Function(MedicalSymptomDetail) then,
  ) = _$MedicalSymptomDetailCopyWithImpl<$Res, MedicalSymptomDetail>;
  @useResult
  $Res call({
    String id,
    String? diagnosis,
    String status,
    bool isEmergency,
    String? notes,
    int affectedQuantity,
    int quantityInCage,
  });
}

/// @nodoc
class _$MedicalSymptomDetailCopyWithImpl<
  $Res,
  $Val extends MedicalSymptomDetail
>
    implements $MedicalSymptomDetailCopyWith<$Res> {
  _$MedicalSymptomDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicalSymptomDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? diagnosis = freezed,
    Object? status = null,
    Object? isEmergency = null,
    Object? notes = freezed,
    Object? affectedQuantity = null,
    Object? quantityInCage = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            diagnosis:
                freezed == diagnosis
                    ? _value.diagnosis
                    : diagnosis // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            isEmergency:
                null == isEmergency
                    ? _value.isEmergency
                    : isEmergency // ignore: cast_nullable_to_non_nullable
                        as bool,
            notes:
                freezed == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as String?,
            affectedQuantity:
                null == affectedQuantity
                    ? _value.affectedQuantity
                    : affectedQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            quantityInCage:
                null == quantityInCage
                    ? _value.quantityInCage
                    : quantityInCage // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MedicalSymptomDetailImplCopyWith<$Res>
    implements $MedicalSymptomDetailCopyWith<$Res> {
  factory _$$MedicalSymptomDetailImplCopyWith(
    _$MedicalSymptomDetailImpl value,
    $Res Function(_$MedicalSymptomDetailImpl) then,
  ) = __$$MedicalSymptomDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? diagnosis,
    String status,
    bool isEmergency,
    String? notes,
    int affectedQuantity,
    int quantityInCage,
  });
}

/// @nodoc
class __$$MedicalSymptomDetailImplCopyWithImpl<$Res>
    extends _$MedicalSymptomDetailCopyWithImpl<$Res, _$MedicalSymptomDetailImpl>
    implements _$$MedicalSymptomDetailImplCopyWith<$Res> {
  __$$MedicalSymptomDetailImplCopyWithImpl(
    _$MedicalSymptomDetailImpl _value,
    $Res Function(_$MedicalSymptomDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MedicalSymptomDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? diagnosis = freezed,
    Object? status = null,
    Object? isEmergency = null,
    Object? notes = freezed,
    Object? affectedQuantity = null,
    Object? quantityInCage = null,
  }) {
    return _then(
      _$MedicalSymptomDetailImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        diagnosis:
            freezed == diagnosis
                ? _value.diagnosis
                : diagnosis // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        isEmergency:
            null == isEmergency
                ? _value.isEmergency
                : isEmergency // ignore: cast_nullable_to_non_nullable
                    as bool,
        notes:
            freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as String?,
        affectedQuantity:
            null == affectedQuantity
                ? _value.affectedQuantity
                : affectedQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        quantityInCage:
            null == quantityInCage
                ? _value.quantityInCage
                : quantityInCage // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalSymptomDetailImpl implements _MedicalSymptomDetail {
  _$MedicalSymptomDetailImpl({
    required this.id,
    this.diagnosis,
    required this.status,
    required this.isEmergency,
    this.notes,
    required this.affectedQuantity,
    required this.quantityInCage,
  });

  factory _$MedicalSymptomDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalSymptomDetailImplFromJson(json);

  @override
  final String id;
  @override
  final String? diagnosis;
  @override
  final String status;
  @override
  final bool isEmergency;
  @override
  final String? notes;
  @override
  final int affectedQuantity;
  @override
  final int quantityInCage;

  @override
  String toString() {
    return 'MedicalSymptomDetail(id: $id, diagnosis: $diagnosis, status: $status, isEmergency: $isEmergency, notes: $notes, affectedQuantity: $affectedQuantity, quantityInCage: $quantityInCage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalSymptomDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isEmergency, isEmergency) ||
                other.isEmergency == isEmergency) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.affectedQuantity, affectedQuantity) ||
                other.affectedQuantity == affectedQuantity) &&
            (identical(other.quantityInCage, quantityInCage) ||
                other.quantityInCage == quantityInCage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    diagnosis,
    status,
    isEmergency,
    notes,
    affectedQuantity,
    quantityInCage,
  );

  /// Create a copy of MedicalSymptomDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicalSymptomDetailImplCopyWith<_$MedicalSymptomDetailImpl>
  get copyWith =>
      __$$MedicalSymptomDetailImplCopyWithImpl<_$MedicalSymptomDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalSymptomDetailImplToJson(this);
  }
}

abstract class _MedicalSymptomDetail implements MedicalSymptomDetail {
  factory _MedicalSymptomDetail({
    required final String id,
    final String? diagnosis,
    required final String status,
    required final bool isEmergency,
    final String? notes,
    required final int affectedQuantity,
    required final int quantityInCage,
  }) = _$MedicalSymptomDetailImpl;

  factory _MedicalSymptomDetail.fromJson(Map<String, dynamic> json) =
      _$MedicalSymptomDetailImpl.fromJson;

  @override
  String get id;
  @override
  String? get diagnosis;
  @override
  String get status;
  @override
  bool get isEmergency;
  @override
  String? get notes;
  @override
  int get affectedQuantity;
  @override
  int get quantityInCage;

  /// Create a copy of MedicalSymptomDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicalSymptomDetailImplCopyWith<_$MedicalSymptomDetailImpl>
  get copyWith => throw _privateConstructorUsedError;
}
