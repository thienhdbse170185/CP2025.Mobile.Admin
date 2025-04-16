// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PrescriptionDetail _$PrescriptionDetailFromJson(Map<String, dynamic> json) {
  return _PrescriptionDetail.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionDetail {
  String get prescriptionId => throw _privateConstructorUsedError;
  String? get diagnosis => throw _privateConstructorUsedError;
  int get affectedQuantity => throw _privateConstructorUsedError;
  int get prescriptionPrice => throw _privateConstructorUsedError;
  String get diseaseName => throw _privateConstructorUsedError;
  String get diseaseDescription => throw _privateConstructorUsedError;
  List<String> get symptoms => throw _privateConstructorUsedError;

  /// Serializes this PrescriptionDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrescriptionDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrescriptionDetailCopyWith<PrescriptionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionDetailCopyWith<$Res> {
  factory $PrescriptionDetailCopyWith(
    PrescriptionDetail value,
    $Res Function(PrescriptionDetail) then,
  ) = _$PrescriptionDetailCopyWithImpl<$Res, PrescriptionDetail>;
  @useResult
  $Res call({
    String prescriptionId,
    String? diagnosis,
    int affectedQuantity,
    int prescriptionPrice,
    String diseaseName,
    String diseaseDescription,
    List<String> symptoms,
  });
}

/// @nodoc
class _$PrescriptionDetailCopyWithImpl<$Res, $Val extends PrescriptionDetail>
    implements $PrescriptionDetailCopyWith<$Res> {
  _$PrescriptionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrescriptionDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescriptionId = null,
    Object? diagnosis = freezed,
    Object? affectedQuantity = null,
    Object? prescriptionPrice = null,
    Object? diseaseName = null,
    Object? diseaseDescription = null,
    Object? symptoms = null,
  }) {
    return _then(
      _value.copyWith(
            prescriptionId:
                null == prescriptionId
                    ? _value.prescriptionId
                    : prescriptionId // ignore: cast_nullable_to_non_nullable
                        as String,
            diagnosis:
                freezed == diagnosis
                    ? _value.diagnosis
                    : diagnosis // ignore: cast_nullable_to_non_nullable
                        as String?,
            affectedQuantity:
                null == affectedQuantity
                    ? _value.affectedQuantity
                    : affectedQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            prescriptionPrice:
                null == prescriptionPrice
                    ? _value.prescriptionPrice
                    : prescriptionPrice // ignore: cast_nullable_to_non_nullable
                        as int,
            diseaseName:
                null == diseaseName
                    ? _value.diseaseName
                    : diseaseName // ignore: cast_nullable_to_non_nullable
                        as String,
            diseaseDescription:
                null == diseaseDescription
                    ? _value.diseaseDescription
                    : diseaseDescription // ignore: cast_nullable_to_non_nullable
                        as String,
            symptoms:
                null == symptoms
                    ? _value.symptoms
                    : symptoms // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PrescriptionDetailImplCopyWith<$Res>
    implements $PrescriptionDetailCopyWith<$Res> {
  factory _$$PrescriptionDetailImplCopyWith(
    _$PrescriptionDetailImpl value,
    $Res Function(_$PrescriptionDetailImpl) then,
  ) = __$$PrescriptionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String prescriptionId,
    String? diagnosis,
    int affectedQuantity,
    int prescriptionPrice,
    String diseaseName,
    String diseaseDescription,
    List<String> symptoms,
  });
}

/// @nodoc
class __$$PrescriptionDetailImplCopyWithImpl<$Res>
    extends _$PrescriptionDetailCopyWithImpl<$Res, _$PrescriptionDetailImpl>
    implements _$$PrescriptionDetailImplCopyWith<$Res> {
  __$$PrescriptionDetailImplCopyWithImpl(
    _$PrescriptionDetailImpl _value,
    $Res Function(_$PrescriptionDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PrescriptionDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescriptionId = null,
    Object? diagnosis = freezed,
    Object? affectedQuantity = null,
    Object? prescriptionPrice = null,
    Object? diseaseName = null,
    Object? diseaseDescription = null,
    Object? symptoms = null,
  }) {
    return _then(
      _$PrescriptionDetailImpl(
        prescriptionId:
            null == prescriptionId
                ? _value.prescriptionId
                : prescriptionId // ignore: cast_nullable_to_non_nullable
                    as String,
        diagnosis:
            freezed == diagnosis
                ? _value.diagnosis
                : diagnosis // ignore: cast_nullable_to_non_nullable
                    as String?,
        affectedQuantity:
            null == affectedQuantity
                ? _value.affectedQuantity
                : affectedQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        prescriptionPrice:
            null == prescriptionPrice
                ? _value.prescriptionPrice
                : prescriptionPrice // ignore: cast_nullable_to_non_nullable
                    as int,
        diseaseName:
            null == diseaseName
                ? _value.diseaseName
                : diseaseName // ignore: cast_nullable_to_non_nullable
                    as String,
        diseaseDescription:
            null == diseaseDescription
                ? _value.diseaseDescription
                : diseaseDescription // ignore: cast_nullable_to_non_nullable
                    as String,
        symptoms:
            null == symptoms
                ? _value._symptoms
                : symptoms // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionDetailImpl implements _PrescriptionDetail {
  _$PrescriptionDetailImpl({
    required this.prescriptionId,
    this.diagnosis,
    this.affectedQuantity = 0,
    this.prescriptionPrice = 0,
    this.diseaseName = "Unknown",
    this.diseaseDescription = "N/A",
    final List<String> symptoms = const [],
  }) : _symptoms = symptoms;

  factory _$PrescriptionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionDetailImplFromJson(json);

  @override
  final String prescriptionId;
  @override
  final String? diagnosis;
  @override
  @JsonKey()
  final int affectedQuantity;
  @override
  @JsonKey()
  final int prescriptionPrice;
  @override
  @JsonKey()
  final String diseaseName;
  @override
  @JsonKey()
  final String diseaseDescription;
  final List<String> _symptoms;
  @override
  @JsonKey()
  List<String> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  String toString() {
    return 'PrescriptionDetail(prescriptionId: $prescriptionId, diagnosis: $diagnosis, affectedQuantity: $affectedQuantity, prescriptionPrice: $prescriptionPrice, diseaseName: $diseaseName, diseaseDescription: $diseaseDescription, symptoms: $symptoms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionDetailImpl &&
            (identical(other.prescriptionId, prescriptionId) ||
                other.prescriptionId == prescriptionId) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            (identical(other.affectedQuantity, affectedQuantity) ||
                other.affectedQuantity == affectedQuantity) &&
            (identical(other.prescriptionPrice, prescriptionPrice) ||
                other.prescriptionPrice == prescriptionPrice) &&
            (identical(other.diseaseName, diseaseName) ||
                other.diseaseName == diseaseName) &&
            (identical(other.diseaseDescription, diseaseDescription) ||
                other.diseaseDescription == diseaseDescription) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    prescriptionId,
    diagnosis,
    affectedQuantity,
    prescriptionPrice,
    diseaseName,
    diseaseDescription,
    const DeepCollectionEquality().hash(_symptoms),
  );

  /// Create a copy of PrescriptionDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionDetailImplCopyWith<_$PrescriptionDetailImpl> get copyWith =>
      __$$PrescriptionDetailImplCopyWithImpl<_$PrescriptionDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionDetailImplToJson(this);
  }
}

abstract class _PrescriptionDetail implements PrescriptionDetail {
  factory _PrescriptionDetail({
    required final String prescriptionId,
    final String? diagnosis,
    final int affectedQuantity,
    final int prescriptionPrice,
    final String diseaseName,
    final String diseaseDescription,
    final List<String> symptoms,
  }) = _$PrescriptionDetailImpl;

  factory _PrescriptionDetail.fromJson(Map<String, dynamic> json) =
      _$PrescriptionDetailImpl.fromJson;

  @override
  String get prescriptionId;
  @override
  String? get diagnosis;
  @override
  int get affectedQuantity;
  @override
  int get prescriptionPrice;
  @override
  String get diseaseName;
  @override
  String get diseaseDescription;
  @override
  List<String> get symptoms;

  /// Create a copy of PrescriptionDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionDetailImplCopyWith<_$PrescriptionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
