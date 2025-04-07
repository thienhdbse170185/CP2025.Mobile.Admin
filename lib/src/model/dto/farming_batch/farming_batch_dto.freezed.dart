// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farming_batch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FarmingBatchDto _$FarmingBatchDtoFromJson(Map<String, dynamic> json) {
  return _FarmingBatchDto.fromJson(json);
}

/// @nodoc
mixin _$FarmingBatchDto {
  String get id => throw _privateConstructorUsedError;
  String? get farmingBatchCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String? get completeAt => throw _privateConstructorUsedError;
  String get estimatedTimeStart => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get cleaningFrequency => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int? get deadQuantity => throw _privateConstructorUsedError;
  String? get farmId => throw _privateConstructorUsedError;
  String? get cageId => throw _privateConstructorUsedError;
  String? get cageName => throw _privateConstructorUsedError;
  List<GrowthStageDetail>? get growthStages =>
      throw _privateConstructorUsedError;
  List<MedicalSymptomDetail>? get medicalSymptoms =>
      throw _privateConstructorUsedError;
  CageDto? get cage => throw _privateConstructorUsedError;
  AnimalTemplateDto? get animalTemplate => throw _privateConstructorUsedError;
  String? get templateName => throw _privateConstructorUsedError;

  /// Serializes this FarmingBatchDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmingBatchDtoCopyWith<FarmingBatchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmingBatchDtoCopyWith<$Res> {
  factory $FarmingBatchDtoCopyWith(
    FarmingBatchDto value,
    $Res Function(FarmingBatchDto) then,
  ) = _$FarmingBatchDtoCopyWithImpl<$Res, FarmingBatchDto>;
  @useResult
  $Res call({
    String id,
    String? farmingBatchCode,
    String name,
    String? species,
    String startDate,
    String? completeAt,
    String estimatedTimeStart,
    String endDate,
    String status,
    int cleaningFrequency,
    int quantity,
    int? deadQuantity,
    String? farmId,
    String? cageId,
    String? cageName,
    List<GrowthStageDetail>? growthStages,
    List<MedicalSymptomDetail>? medicalSymptoms,
    CageDto? cage,
    AnimalTemplateDto? animalTemplate,
    String? templateName,
  });

  $CageDtoCopyWith<$Res>? get cage;
  $AnimalTemplateDtoCopyWith<$Res>? get animalTemplate;
}

/// @nodoc
class _$FarmingBatchDtoCopyWithImpl<$Res, $Val extends FarmingBatchDto>
    implements $FarmingBatchDtoCopyWith<$Res> {
  _$FarmingBatchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farmingBatchCode = freezed,
    Object? name = null,
    Object? species = freezed,
    Object? startDate = null,
    Object? completeAt = freezed,
    Object? estimatedTimeStart = null,
    Object? endDate = null,
    Object? status = null,
    Object? cleaningFrequency = null,
    Object? quantity = null,
    Object? deadQuantity = freezed,
    Object? farmId = freezed,
    Object? cageId = freezed,
    Object? cageName = freezed,
    Object? growthStages = freezed,
    Object? medicalSymptoms = freezed,
    Object? cage = freezed,
    Object? animalTemplate = freezed,
    Object? templateName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            farmingBatchCode:
                freezed == farmingBatchCode
                    ? _value.farmingBatchCode
                    : farmingBatchCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            species:
                freezed == species
                    ? _value.species
                    : species // ignore: cast_nullable_to_non_nullable
                        as String?,
            startDate:
                null == startDate
                    ? _value.startDate
                    : startDate // ignore: cast_nullable_to_non_nullable
                        as String,
            completeAt:
                freezed == completeAt
                    ? _value.completeAt
                    : completeAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            estimatedTimeStart:
                null == estimatedTimeStart
                    ? _value.estimatedTimeStart
                    : estimatedTimeStart // ignore: cast_nullable_to_non_nullable
                        as String,
            endDate:
                null == endDate
                    ? _value.endDate
                    : endDate // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            cleaningFrequency:
                null == cleaningFrequency
                    ? _value.cleaningFrequency
                    : cleaningFrequency // ignore: cast_nullable_to_non_nullable
                        as int,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            deadQuantity:
                freezed == deadQuantity
                    ? _value.deadQuantity
                    : deadQuantity // ignore: cast_nullable_to_non_nullable
                        as int?,
            farmId:
                freezed == farmId
                    ? _value.farmId
                    : farmId // ignore: cast_nullable_to_non_nullable
                        as String?,
            cageId:
                freezed == cageId
                    ? _value.cageId
                    : cageId // ignore: cast_nullable_to_non_nullable
                        as String?,
            cageName:
                freezed == cageName
                    ? _value.cageName
                    : cageName // ignore: cast_nullable_to_non_nullable
                        as String?,
            growthStages:
                freezed == growthStages
                    ? _value.growthStages
                    : growthStages // ignore: cast_nullable_to_non_nullable
                        as List<GrowthStageDetail>?,
            medicalSymptoms:
                freezed == medicalSymptoms
                    ? _value.medicalSymptoms
                    : medicalSymptoms // ignore: cast_nullable_to_non_nullable
                        as List<MedicalSymptomDetail>?,
            cage:
                freezed == cage
                    ? _value.cage
                    : cage // ignore: cast_nullable_to_non_nullable
                        as CageDto?,
            animalTemplate:
                freezed == animalTemplate
                    ? _value.animalTemplate
                    : animalTemplate // ignore: cast_nullable_to_non_nullable
                        as AnimalTemplateDto?,
            templateName:
                freezed == templateName
                    ? _value.templateName
                    : templateName // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CageDtoCopyWith<$Res>? get cage {
    if (_value.cage == null) {
      return null;
    }

    return $CageDtoCopyWith<$Res>(_value.cage!, (value) {
      return _then(_value.copyWith(cage: value) as $Val);
    });
  }

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimalTemplateDtoCopyWith<$Res>? get animalTemplate {
    if (_value.animalTemplate == null) {
      return null;
    }

    return $AnimalTemplateDtoCopyWith<$Res>(_value.animalTemplate!, (value) {
      return _then(_value.copyWith(animalTemplate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FarmingBatchDtoImplCopyWith<$Res>
    implements $FarmingBatchDtoCopyWith<$Res> {
  factory _$$FarmingBatchDtoImplCopyWith(
    _$FarmingBatchDtoImpl value,
    $Res Function(_$FarmingBatchDtoImpl) then,
  ) = __$$FarmingBatchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? farmingBatchCode,
    String name,
    String? species,
    String startDate,
    String? completeAt,
    String estimatedTimeStart,
    String endDate,
    String status,
    int cleaningFrequency,
    int quantity,
    int? deadQuantity,
    String? farmId,
    String? cageId,
    String? cageName,
    List<GrowthStageDetail>? growthStages,
    List<MedicalSymptomDetail>? medicalSymptoms,
    CageDto? cage,
    AnimalTemplateDto? animalTemplate,
    String? templateName,
  });

  @override
  $CageDtoCopyWith<$Res>? get cage;
  @override
  $AnimalTemplateDtoCopyWith<$Res>? get animalTemplate;
}

/// @nodoc
class __$$FarmingBatchDtoImplCopyWithImpl<$Res>
    extends _$FarmingBatchDtoCopyWithImpl<$Res, _$FarmingBatchDtoImpl>
    implements _$$FarmingBatchDtoImplCopyWith<$Res> {
  __$$FarmingBatchDtoImplCopyWithImpl(
    _$FarmingBatchDtoImpl _value,
    $Res Function(_$FarmingBatchDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farmingBatchCode = freezed,
    Object? name = null,
    Object? species = freezed,
    Object? startDate = null,
    Object? completeAt = freezed,
    Object? estimatedTimeStart = null,
    Object? endDate = null,
    Object? status = null,
    Object? cleaningFrequency = null,
    Object? quantity = null,
    Object? deadQuantity = freezed,
    Object? farmId = freezed,
    Object? cageId = freezed,
    Object? cageName = freezed,
    Object? growthStages = freezed,
    Object? medicalSymptoms = freezed,
    Object? cage = freezed,
    Object? animalTemplate = freezed,
    Object? templateName = freezed,
  }) {
    return _then(
      _$FarmingBatchDtoImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        farmingBatchCode:
            freezed == farmingBatchCode
                ? _value.farmingBatchCode
                : farmingBatchCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        species:
            freezed == species
                ? _value.species
                : species // ignore: cast_nullable_to_non_nullable
                    as String?,
        startDate:
            null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as String,
        completeAt:
            freezed == completeAt
                ? _value.completeAt
                : completeAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        estimatedTimeStart:
            null == estimatedTimeStart
                ? _value.estimatedTimeStart
                : estimatedTimeStart // ignore: cast_nullable_to_non_nullable
                    as String,
        endDate:
            null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        cleaningFrequency:
            null == cleaningFrequency
                ? _value.cleaningFrequency
                : cleaningFrequency // ignore: cast_nullable_to_non_nullable
                    as int,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        deadQuantity:
            freezed == deadQuantity
                ? _value.deadQuantity
                : deadQuantity // ignore: cast_nullable_to_non_nullable
                    as int?,
        farmId:
            freezed == farmId
                ? _value.farmId
                : farmId // ignore: cast_nullable_to_non_nullable
                    as String?,
        cageId:
            freezed == cageId
                ? _value.cageId
                : cageId // ignore: cast_nullable_to_non_nullable
                    as String?,
        cageName:
            freezed == cageName
                ? _value.cageName
                : cageName // ignore: cast_nullable_to_non_nullable
                    as String?,
        growthStages:
            freezed == growthStages
                ? _value._growthStages
                : growthStages // ignore: cast_nullable_to_non_nullable
                    as List<GrowthStageDetail>?,
        medicalSymptoms:
            freezed == medicalSymptoms
                ? _value._medicalSymptoms
                : medicalSymptoms // ignore: cast_nullable_to_non_nullable
                    as List<MedicalSymptomDetail>?,
        cage:
            freezed == cage
                ? _value.cage
                : cage // ignore: cast_nullable_to_non_nullable
                    as CageDto?,
        animalTemplate:
            freezed == animalTemplate
                ? _value.animalTemplate
                : animalTemplate // ignore: cast_nullable_to_non_nullable
                    as AnimalTemplateDto?,
        templateName:
            freezed == templateName
                ? _value.templateName
                : templateName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmingBatchDtoImpl implements _FarmingBatchDto {
  _$FarmingBatchDtoImpl({
    required this.id,
    this.farmingBatchCode,
    required this.name,
    this.species,
    required this.startDate,
    this.completeAt,
    required this.estimatedTimeStart,
    required this.endDate,
    required this.status,
    required this.cleaningFrequency,
    required this.quantity,
    this.deadQuantity,
    this.farmId,
    this.cageId,
    this.cageName,
    final List<GrowthStageDetail>? growthStages,
    final List<MedicalSymptomDetail>? medicalSymptoms,
    this.cage,
    this.animalTemplate,
    this.templateName,
  }) : _growthStages = growthStages,
       _medicalSymptoms = medicalSymptoms;

  factory _$FarmingBatchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmingBatchDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String? farmingBatchCode;
  @override
  final String name;
  @override
  final String? species;
  @override
  final String startDate;
  @override
  final String? completeAt;
  @override
  final String estimatedTimeStart;
  @override
  final String endDate;
  @override
  final String status;
  @override
  final int cleaningFrequency;
  @override
  final int quantity;
  @override
  final int? deadQuantity;
  @override
  final String? farmId;
  @override
  final String? cageId;
  @override
  final String? cageName;
  final List<GrowthStageDetail>? _growthStages;
  @override
  List<GrowthStageDetail>? get growthStages {
    final value = _growthStages;
    if (value == null) return null;
    if (_growthStages is EqualUnmodifiableListView) return _growthStages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MedicalSymptomDetail>? _medicalSymptoms;
  @override
  List<MedicalSymptomDetail>? get medicalSymptoms {
    final value = _medicalSymptoms;
    if (value == null) return null;
    if (_medicalSymptoms is EqualUnmodifiableListView) return _medicalSymptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CageDto? cage;
  @override
  final AnimalTemplateDto? animalTemplate;
  @override
  final String? templateName;

  @override
  String toString() {
    return 'FarmingBatchDto(id: $id, farmingBatchCode: $farmingBatchCode, name: $name, species: $species, startDate: $startDate, completeAt: $completeAt, estimatedTimeStart: $estimatedTimeStart, endDate: $endDate, status: $status, cleaningFrequency: $cleaningFrequency, quantity: $quantity, deadQuantity: $deadQuantity, farmId: $farmId, cageId: $cageId, cageName: $cageName, growthStages: $growthStages, medicalSymptoms: $medicalSymptoms, cage: $cage, animalTemplate: $animalTemplate, templateName: $templateName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmingBatchDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.farmingBatchCode, farmingBatchCode) ||
                other.farmingBatchCode == farmingBatchCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.completeAt, completeAt) ||
                other.completeAt == completeAt) &&
            (identical(other.estimatedTimeStart, estimatedTimeStart) ||
                other.estimatedTimeStart == estimatedTimeStart) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cleaningFrequency, cleaningFrequency) ||
                other.cleaningFrequency == cleaningFrequency) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.deadQuantity, deadQuantity) ||
                other.deadQuantity == deadQuantity) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.cageName, cageName) ||
                other.cageName == cageName) &&
            const DeepCollectionEquality().equals(
              other._growthStages,
              _growthStages,
            ) &&
            const DeepCollectionEquality().equals(
              other._medicalSymptoms,
              _medicalSymptoms,
            ) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.animalTemplate, animalTemplate) ||
                other.animalTemplate == animalTemplate) &&
            (identical(other.templateName, templateName) ||
                other.templateName == templateName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    farmingBatchCode,
    name,
    species,
    startDate,
    completeAt,
    estimatedTimeStart,
    endDate,
    status,
    cleaningFrequency,
    quantity,
    deadQuantity,
    farmId,
    cageId,
    cageName,
    const DeepCollectionEquality().hash(_growthStages),
    const DeepCollectionEquality().hash(_medicalSymptoms),
    cage,
    animalTemplate,
    templateName,
  ]);

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmingBatchDtoImplCopyWith<_$FarmingBatchDtoImpl> get copyWith =>
      __$$FarmingBatchDtoImplCopyWithImpl<_$FarmingBatchDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmingBatchDtoImplToJson(this);
  }
}

abstract class _FarmingBatchDto implements FarmingBatchDto {
  factory _FarmingBatchDto({
    required final String id,
    final String? farmingBatchCode,
    required final String name,
    final String? species,
    required final String startDate,
    final String? completeAt,
    required final String estimatedTimeStart,
    required final String endDate,
    required final String status,
    required final int cleaningFrequency,
    required final int quantity,
    final int? deadQuantity,
    final String? farmId,
    final String? cageId,
    final String? cageName,
    final List<GrowthStageDetail>? growthStages,
    final List<MedicalSymptomDetail>? medicalSymptoms,
    final CageDto? cage,
    final AnimalTemplateDto? animalTemplate,
    final String? templateName,
  }) = _$FarmingBatchDtoImpl;

  factory _FarmingBatchDto.fromJson(Map<String, dynamic> json) =
      _$FarmingBatchDtoImpl.fromJson;

  @override
  String get id;
  @override
  String? get farmingBatchCode;
  @override
  String get name;
  @override
  String? get species;
  @override
  String get startDate;
  @override
  String? get completeAt;
  @override
  String get estimatedTimeStart;
  @override
  String get endDate;
  @override
  String get status;
  @override
  int get cleaningFrequency;
  @override
  int get quantity;
  @override
  int? get deadQuantity;
  @override
  String? get farmId;
  @override
  String? get cageId;
  @override
  String? get cageName;
  @override
  List<GrowthStageDetail>? get growthStages;
  @override
  List<MedicalSymptomDetail>? get medicalSymptoms;
  @override
  CageDto? get cage;
  @override
  AnimalTemplateDto? get animalTemplate;
  @override
  String? get templateName;

  /// Create a copy of FarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmingBatchDtoImplCopyWith<_$FarmingBatchDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
