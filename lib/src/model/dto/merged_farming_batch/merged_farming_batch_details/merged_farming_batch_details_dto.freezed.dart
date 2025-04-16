// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merged_farming_batch_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MergedFarmingBatchDetailsDto _$MergedFarmingBatchDetailsDtoFromJson(
  Map<String, dynamic> json,
) {
  return _MergedFarmingBatchDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$MergedFarmingBatchDetailsDto {
  String get id => throw _privateConstructorUsedError;
  String get farmingbatchCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String? get completeAt => throw _privateConstructorUsedError;
  String get estimatedTimeStart => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get cleaningFrequency => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get deadQuantity => throw _privateConstructorUsedError;
  GrowthStageDetail get growthStageDetails =>
      throw _privateConstructorUsedError;
  CageDto get cage => throw _privateConstructorUsedError;
  AnimalTemplateDto get template => throw _privateConstructorUsedError;

  /// Serializes this MergedFarmingBatchDetailsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MergedFarmingBatchDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MergedFarmingBatchDetailsDtoCopyWith<MergedFarmingBatchDetailsDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergedFarmingBatchDetailsDtoCopyWith<$Res> {
  factory $MergedFarmingBatchDetailsDtoCopyWith(
    MergedFarmingBatchDetailsDto value,
    $Res Function(MergedFarmingBatchDetailsDto) then,
  ) =
      _$MergedFarmingBatchDetailsDtoCopyWithImpl<
        $Res,
        MergedFarmingBatchDetailsDto
      >;
  @useResult
  $Res call({
    String id,
    String farmingbatchCode,
    String name,
    String species,
    String startDate,
    String? completeAt,
    String estimatedTimeStart,
    String? endDate,
    String status,
    int cleaningFrequency,
    int quantity,
    int deadQuantity,
    GrowthStageDetail growthStageDetails,
    CageDto cage,
    AnimalTemplateDto template,
  });

  $GrowthStageDetailCopyWith<$Res> get growthStageDetails;
  $CageDtoCopyWith<$Res> get cage;
  $AnimalTemplateDtoCopyWith<$Res> get template;
}

/// @nodoc
class _$MergedFarmingBatchDetailsDtoCopyWithImpl<
  $Res,
  $Val extends MergedFarmingBatchDetailsDto
>
    implements $MergedFarmingBatchDetailsDtoCopyWith<$Res> {
  _$MergedFarmingBatchDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MergedFarmingBatchDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farmingbatchCode = null,
    Object? name = null,
    Object? species = null,
    Object? startDate = null,
    Object? completeAt = freezed,
    Object? estimatedTimeStart = null,
    Object? endDate = freezed,
    Object? status = null,
    Object? cleaningFrequency = null,
    Object? quantity = null,
    Object? deadQuantity = null,
    Object? growthStageDetails = null,
    Object? cage = null,
    Object? template = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            farmingbatchCode:
                null == farmingbatchCode
                    ? _value.farmingbatchCode
                    : farmingbatchCode // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            species:
                null == species
                    ? _value.species
                    : species // ignore: cast_nullable_to_non_nullable
                        as String,
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
                freezed == endDate
                    ? _value.endDate
                    : endDate // ignore: cast_nullable_to_non_nullable
                        as String?,
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
                null == deadQuantity
                    ? _value.deadQuantity
                    : deadQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            growthStageDetails:
                null == growthStageDetails
                    ? _value.growthStageDetails
                    : growthStageDetails // ignore: cast_nullable_to_non_nullable
                        as GrowthStageDetail,
            cage:
                null == cage
                    ? _value.cage
                    : cage // ignore: cast_nullable_to_non_nullable
                        as CageDto,
            template:
                null == template
                    ? _value.template
                    : template // ignore: cast_nullable_to_non_nullable
                        as AnimalTemplateDto,
          )
          as $Val,
    );
  }

  /// Create a copy of MergedFarmingBatchDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrowthStageDetailCopyWith<$Res> get growthStageDetails {
    return $GrowthStageDetailCopyWith<$Res>(_value.growthStageDetails, (value) {
      return _then(_value.copyWith(growthStageDetails: value) as $Val);
    });
  }

  /// Create a copy of MergedFarmingBatchDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CageDtoCopyWith<$Res> get cage {
    return $CageDtoCopyWith<$Res>(_value.cage, (value) {
      return _then(_value.copyWith(cage: value) as $Val);
    });
  }

  /// Create a copy of MergedFarmingBatchDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimalTemplateDtoCopyWith<$Res> get template {
    return $AnimalTemplateDtoCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MergedFarmingBatchDetailsDtoImplCopyWith<$Res>
    implements $MergedFarmingBatchDetailsDtoCopyWith<$Res> {
  factory _$$MergedFarmingBatchDetailsDtoImplCopyWith(
    _$MergedFarmingBatchDetailsDtoImpl value,
    $Res Function(_$MergedFarmingBatchDetailsDtoImpl) then,
  ) = __$$MergedFarmingBatchDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String farmingbatchCode,
    String name,
    String species,
    String startDate,
    String? completeAt,
    String estimatedTimeStart,
    String? endDate,
    String status,
    int cleaningFrequency,
    int quantity,
    int deadQuantity,
    GrowthStageDetail growthStageDetails,
    CageDto cage,
    AnimalTemplateDto template,
  });

  @override
  $GrowthStageDetailCopyWith<$Res> get growthStageDetails;
  @override
  $CageDtoCopyWith<$Res> get cage;
  @override
  $AnimalTemplateDtoCopyWith<$Res> get template;
}

/// @nodoc
class __$$MergedFarmingBatchDetailsDtoImplCopyWithImpl<$Res>
    extends
        _$MergedFarmingBatchDetailsDtoCopyWithImpl<
          $Res,
          _$MergedFarmingBatchDetailsDtoImpl
        >
    implements _$$MergedFarmingBatchDetailsDtoImplCopyWith<$Res> {
  __$$MergedFarmingBatchDetailsDtoImplCopyWithImpl(
    _$MergedFarmingBatchDetailsDtoImpl _value,
    $Res Function(_$MergedFarmingBatchDetailsDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MergedFarmingBatchDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farmingbatchCode = null,
    Object? name = null,
    Object? species = null,
    Object? startDate = null,
    Object? completeAt = freezed,
    Object? estimatedTimeStart = null,
    Object? endDate = freezed,
    Object? status = null,
    Object? cleaningFrequency = null,
    Object? quantity = null,
    Object? deadQuantity = null,
    Object? growthStageDetails = null,
    Object? cage = null,
    Object? template = null,
  }) {
    return _then(
      _$MergedFarmingBatchDetailsDtoImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        farmingbatchCode:
            null == farmingbatchCode
                ? _value.farmingbatchCode
                : farmingbatchCode // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        species:
            null == species
                ? _value.species
                : species // ignore: cast_nullable_to_non_nullable
                    as String,
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
            freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as String?,
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
            null == deadQuantity
                ? _value.deadQuantity
                : deadQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        growthStageDetails:
            null == growthStageDetails
                ? _value.growthStageDetails
                : growthStageDetails // ignore: cast_nullable_to_non_nullable
                    as GrowthStageDetail,
        cage:
            null == cage
                ? _value.cage
                : cage // ignore: cast_nullable_to_non_nullable
                    as CageDto,
        template:
            null == template
                ? _value.template
                : template // ignore: cast_nullable_to_non_nullable
                    as AnimalTemplateDto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MergedFarmingBatchDetailsDtoImpl
    implements _MergedFarmingBatchDetailsDto {
  _$MergedFarmingBatchDetailsDtoImpl({
    required this.id,
    required this.farmingbatchCode,
    required this.name,
    required this.species,
    required this.startDate,
    this.completeAt,
    required this.estimatedTimeStart,
    this.endDate,
    required this.status,
    required this.cleaningFrequency,
    required this.quantity,
    required this.deadQuantity,
    required this.growthStageDetails,
    required this.cage,
    required this.template,
  });

  factory _$MergedFarmingBatchDetailsDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MergedFarmingBatchDetailsDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String farmingbatchCode;
  @override
  final String name;
  @override
  final String species;
  @override
  final String startDate;
  @override
  final String? completeAt;
  @override
  final String estimatedTimeStart;
  @override
  final String? endDate;
  @override
  final String status;
  @override
  final int cleaningFrequency;
  @override
  final int quantity;
  @override
  final int deadQuantity;
  @override
  final GrowthStageDetail growthStageDetails;
  @override
  final CageDto cage;
  @override
  final AnimalTemplateDto template;

  @override
  String toString() {
    return 'MergedFarmingBatchDetailsDto(id: $id, farmingbatchCode: $farmingbatchCode, name: $name, species: $species, startDate: $startDate, completeAt: $completeAt, estimatedTimeStart: $estimatedTimeStart, endDate: $endDate, status: $status, cleaningFrequency: $cleaningFrequency, quantity: $quantity, deadQuantity: $deadQuantity, growthStageDetails: $growthStageDetails, cage: $cage, template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MergedFarmingBatchDetailsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.farmingbatchCode, farmingbatchCode) ||
                other.farmingbatchCode == farmingbatchCode) &&
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
            (identical(other.growthStageDetails, growthStageDetails) ||
                other.growthStageDetails == growthStageDetails) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    farmingbatchCode,
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
    growthStageDetails,
    cage,
    template,
  );

  /// Create a copy of MergedFarmingBatchDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MergedFarmingBatchDetailsDtoImplCopyWith<
    _$MergedFarmingBatchDetailsDtoImpl
  >
  get copyWith => __$$MergedFarmingBatchDetailsDtoImplCopyWithImpl<
    _$MergedFarmingBatchDetailsDtoImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MergedFarmingBatchDetailsDtoImplToJson(this);
  }
}

abstract class _MergedFarmingBatchDetailsDto
    implements MergedFarmingBatchDetailsDto {
  factory _MergedFarmingBatchDetailsDto({
    required final String id,
    required final String farmingbatchCode,
    required final String name,
    required final String species,
    required final String startDate,
    final String? completeAt,
    required final String estimatedTimeStart,
    final String? endDate,
    required final String status,
    required final int cleaningFrequency,
    required final int quantity,
    required final int deadQuantity,
    required final GrowthStageDetail growthStageDetails,
    required final CageDto cage,
    required final AnimalTemplateDto template,
  }) = _$MergedFarmingBatchDetailsDtoImpl;

  factory _MergedFarmingBatchDetailsDto.fromJson(Map<String, dynamic> json) =
      _$MergedFarmingBatchDetailsDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get farmingbatchCode;
  @override
  String get name;
  @override
  String get species;
  @override
  String get startDate;
  @override
  String? get completeAt;
  @override
  String get estimatedTimeStart;
  @override
  String? get endDate;
  @override
  String get status;
  @override
  int get cleaningFrequency;
  @override
  int get quantity;
  @override
  int get deadQuantity;
  @override
  GrowthStageDetail get growthStageDetails;
  @override
  CageDto get cage;
  @override
  AnimalTemplateDto get template;

  /// Create a copy of MergedFarmingBatchDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MergedFarmingBatchDetailsDtoImplCopyWith<
    _$MergedFarmingBatchDetailsDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
