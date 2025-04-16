// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_farming_batch_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReportFarmingBatchDto _$ReportFarmingBatchDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ReportFarmingBatchDto.fromJson(json);
}

/// @nodoc
mixin _$ReportFarmingBatchDto {
  String get farmingBatchId => throw _privateConstructorUsedError;
  String get farmingBatchName => throw _privateConstructorUsedError;
  String get cageName => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  int get totalEggSales => throw _privateConstructorUsedError;
  int get totalMeatSales => throw _privateConstructorUsedError;
  int get totalFoodCost => throw _privateConstructorUsedError;
  int get totalVaccineCost => throw _privateConstructorUsedError;
  int get totalMedicineCost => throw _privateConstructorUsedError;
  int get totalEggsCollected => throw _privateConstructorUsedError;
  int get netProfit => throw _privateConstructorUsedError;
  int get quantityAnimal => throw _privateConstructorUsedError;
  int get deadQuantity => throw _privateConstructorUsedError;
  List<GrowthStageReport> get growthStageReports =>
      throw _privateConstructorUsedError;
  List<VaccineDetail> get vaccineDetails => throw _privateConstructorUsedError;
  List<PrescriptionDetail> get prescriptionDetails =>
      throw _privateConstructorUsedError;
  List<FoodUsageDetail> get foodUsageDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this ReportFarmingBatchDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportFarmingBatchDtoCopyWith<ReportFarmingBatchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportFarmingBatchDtoCopyWith<$Res> {
  factory $ReportFarmingBatchDtoCopyWith(
    ReportFarmingBatchDto value,
    $Res Function(ReportFarmingBatchDto) then,
  ) = _$ReportFarmingBatchDtoCopyWithImpl<$Res, ReportFarmingBatchDto>;
  @useResult
  $Res call({
    String farmingBatchId,
    String farmingBatchName,
    String cageName,
    DateTime startDate,
    DateTime? endDate,
    int totalEggSales,
    int totalMeatSales,
    int totalFoodCost,
    int totalVaccineCost,
    int totalMedicineCost,
    int totalEggsCollected,
    int netProfit,
    int quantityAnimal,
    int deadQuantity,
    List<GrowthStageReport> growthStageReports,
    List<VaccineDetail> vaccineDetails,
    List<PrescriptionDetail> prescriptionDetails,
    List<FoodUsageDetail> foodUsageDetails,
  });
}

/// @nodoc
class _$ReportFarmingBatchDtoCopyWithImpl<
  $Res,
  $Val extends ReportFarmingBatchDto
>
    implements $ReportFarmingBatchDtoCopyWith<$Res> {
  _$ReportFarmingBatchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmingBatchId = null,
    Object? farmingBatchName = null,
    Object? cageName = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? totalEggSales = null,
    Object? totalMeatSales = null,
    Object? totalFoodCost = null,
    Object? totalVaccineCost = null,
    Object? totalMedicineCost = null,
    Object? totalEggsCollected = null,
    Object? netProfit = null,
    Object? quantityAnimal = null,
    Object? deadQuantity = null,
    Object? growthStageReports = null,
    Object? vaccineDetails = null,
    Object? prescriptionDetails = null,
    Object? foodUsageDetails = null,
  }) {
    return _then(
      _value.copyWith(
            farmingBatchId:
                null == farmingBatchId
                    ? _value.farmingBatchId
                    : farmingBatchId // ignore: cast_nullable_to_non_nullable
                        as String,
            farmingBatchName:
                null == farmingBatchName
                    ? _value.farmingBatchName
                    : farmingBatchName // ignore: cast_nullable_to_non_nullable
                        as String,
            cageName:
                null == cageName
                    ? _value.cageName
                    : cageName // ignore: cast_nullable_to_non_nullable
                        as String,
            startDate:
                null == startDate
                    ? _value.startDate
                    : startDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endDate:
                freezed == endDate
                    ? _value.endDate
                    : endDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            totalEggSales:
                null == totalEggSales
                    ? _value.totalEggSales
                    : totalEggSales // ignore: cast_nullable_to_non_nullable
                        as int,
            totalMeatSales:
                null == totalMeatSales
                    ? _value.totalMeatSales
                    : totalMeatSales // ignore: cast_nullable_to_non_nullable
                        as int,
            totalFoodCost:
                null == totalFoodCost
                    ? _value.totalFoodCost
                    : totalFoodCost // ignore: cast_nullable_to_non_nullable
                        as int,
            totalVaccineCost:
                null == totalVaccineCost
                    ? _value.totalVaccineCost
                    : totalVaccineCost // ignore: cast_nullable_to_non_nullable
                        as int,
            totalMedicineCost:
                null == totalMedicineCost
                    ? _value.totalMedicineCost
                    : totalMedicineCost // ignore: cast_nullable_to_non_nullable
                        as int,
            totalEggsCollected:
                null == totalEggsCollected
                    ? _value.totalEggsCollected
                    : totalEggsCollected // ignore: cast_nullable_to_non_nullable
                        as int,
            netProfit:
                null == netProfit
                    ? _value.netProfit
                    : netProfit // ignore: cast_nullable_to_non_nullable
                        as int,
            quantityAnimal:
                null == quantityAnimal
                    ? _value.quantityAnimal
                    : quantityAnimal // ignore: cast_nullable_to_non_nullable
                        as int,
            deadQuantity:
                null == deadQuantity
                    ? _value.deadQuantity
                    : deadQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            growthStageReports:
                null == growthStageReports
                    ? _value.growthStageReports
                    : growthStageReports // ignore: cast_nullable_to_non_nullable
                        as List<GrowthStageReport>,
            vaccineDetails:
                null == vaccineDetails
                    ? _value.vaccineDetails
                    : vaccineDetails // ignore: cast_nullable_to_non_nullable
                        as List<VaccineDetail>,
            prescriptionDetails:
                null == prescriptionDetails
                    ? _value.prescriptionDetails
                    : prescriptionDetails // ignore: cast_nullable_to_non_nullable
                        as List<PrescriptionDetail>,
            foodUsageDetails:
                null == foodUsageDetails
                    ? _value.foodUsageDetails
                    : foodUsageDetails // ignore: cast_nullable_to_non_nullable
                        as List<FoodUsageDetail>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportFarmingBatchDtoImplCopyWith<$Res>
    implements $ReportFarmingBatchDtoCopyWith<$Res> {
  factory _$$ReportFarmingBatchDtoImplCopyWith(
    _$ReportFarmingBatchDtoImpl value,
    $Res Function(_$ReportFarmingBatchDtoImpl) then,
  ) = __$$ReportFarmingBatchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String farmingBatchId,
    String farmingBatchName,
    String cageName,
    DateTime startDate,
    DateTime? endDate,
    int totalEggSales,
    int totalMeatSales,
    int totalFoodCost,
    int totalVaccineCost,
    int totalMedicineCost,
    int totalEggsCollected,
    int netProfit,
    int quantityAnimal,
    int deadQuantity,
    List<GrowthStageReport> growthStageReports,
    List<VaccineDetail> vaccineDetails,
    List<PrescriptionDetail> prescriptionDetails,
    List<FoodUsageDetail> foodUsageDetails,
  });
}

/// @nodoc
class __$$ReportFarmingBatchDtoImplCopyWithImpl<$Res>
    extends
        _$ReportFarmingBatchDtoCopyWithImpl<$Res, _$ReportFarmingBatchDtoImpl>
    implements _$$ReportFarmingBatchDtoImplCopyWith<$Res> {
  __$$ReportFarmingBatchDtoImplCopyWithImpl(
    _$ReportFarmingBatchDtoImpl _value,
    $Res Function(_$ReportFarmingBatchDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmingBatchId = null,
    Object? farmingBatchName = null,
    Object? cageName = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? totalEggSales = null,
    Object? totalMeatSales = null,
    Object? totalFoodCost = null,
    Object? totalVaccineCost = null,
    Object? totalMedicineCost = null,
    Object? totalEggsCollected = null,
    Object? netProfit = null,
    Object? quantityAnimal = null,
    Object? deadQuantity = null,
    Object? growthStageReports = null,
    Object? vaccineDetails = null,
    Object? prescriptionDetails = null,
    Object? foodUsageDetails = null,
  }) {
    return _then(
      _$ReportFarmingBatchDtoImpl(
        farmingBatchId:
            null == farmingBatchId
                ? _value.farmingBatchId
                : farmingBatchId // ignore: cast_nullable_to_non_nullable
                    as String,
        farmingBatchName:
            null == farmingBatchName
                ? _value.farmingBatchName
                : farmingBatchName // ignore: cast_nullable_to_non_nullable
                    as String,
        cageName:
            null == cageName
                ? _value.cageName
                : cageName // ignore: cast_nullable_to_non_nullable
                    as String,
        startDate:
            null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endDate:
            freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        totalEggSales:
            null == totalEggSales
                ? _value.totalEggSales
                : totalEggSales // ignore: cast_nullable_to_non_nullable
                    as int,
        totalMeatSales:
            null == totalMeatSales
                ? _value.totalMeatSales
                : totalMeatSales // ignore: cast_nullable_to_non_nullable
                    as int,
        totalFoodCost:
            null == totalFoodCost
                ? _value.totalFoodCost
                : totalFoodCost // ignore: cast_nullable_to_non_nullable
                    as int,
        totalVaccineCost:
            null == totalVaccineCost
                ? _value.totalVaccineCost
                : totalVaccineCost // ignore: cast_nullable_to_non_nullable
                    as int,
        totalMedicineCost:
            null == totalMedicineCost
                ? _value.totalMedicineCost
                : totalMedicineCost // ignore: cast_nullable_to_non_nullable
                    as int,
        totalEggsCollected:
            null == totalEggsCollected
                ? _value.totalEggsCollected
                : totalEggsCollected // ignore: cast_nullable_to_non_nullable
                    as int,
        netProfit:
            null == netProfit
                ? _value.netProfit
                : netProfit // ignore: cast_nullable_to_non_nullable
                    as int,
        quantityAnimal:
            null == quantityAnimal
                ? _value.quantityAnimal
                : quantityAnimal // ignore: cast_nullable_to_non_nullable
                    as int,
        deadQuantity:
            null == deadQuantity
                ? _value.deadQuantity
                : deadQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        growthStageReports:
            null == growthStageReports
                ? _value._growthStageReports
                : growthStageReports // ignore: cast_nullable_to_non_nullable
                    as List<GrowthStageReport>,
        vaccineDetails:
            null == vaccineDetails
                ? _value._vaccineDetails
                : vaccineDetails // ignore: cast_nullable_to_non_nullable
                    as List<VaccineDetail>,
        prescriptionDetails:
            null == prescriptionDetails
                ? _value._prescriptionDetails
                : prescriptionDetails // ignore: cast_nullable_to_non_nullable
                    as List<PrescriptionDetail>,
        foodUsageDetails:
            null == foodUsageDetails
                ? _value._foodUsageDetails
                : foodUsageDetails // ignore: cast_nullable_to_non_nullable
                    as List<FoodUsageDetail>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportFarmingBatchDtoImpl implements _ReportFarmingBatchDto {
  _$ReportFarmingBatchDtoImpl({
    required this.farmingBatchId,
    required this.farmingBatchName,
    required this.cageName,
    required this.startDate,
    this.endDate,
    this.totalEggSales = 0,
    this.totalMeatSales = 0,
    this.totalFoodCost = 0,
    this.totalVaccineCost = 0,
    this.totalMedicineCost = 0,
    this.totalEggsCollected = 0,
    this.netProfit = 0,
    this.quantityAnimal = 0,
    this.deadQuantity = 0,
    final List<GrowthStageReport> growthStageReports = const [],
    final List<VaccineDetail> vaccineDetails = const [],
    final List<PrescriptionDetail> prescriptionDetails = const [],
    final List<FoodUsageDetail> foodUsageDetails = const [],
  }) : _growthStageReports = growthStageReports,
       _vaccineDetails = vaccineDetails,
       _prescriptionDetails = prescriptionDetails,
       _foodUsageDetails = foodUsageDetails;

  factory _$ReportFarmingBatchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportFarmingBatchDtoImplFromJson(json);

  @override
  final String farmingBatchId;
  @override
  final String farmingBatchName;
  @override
  final String cageName;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final int totalEggSales;
  @override
  @JsonKey()
  final int totalMeatSales;
  @override
  @JsonKey()
  final int totalFoodCost;
  @override
  @JsonKey()
  final int totalVaccineCost;
  @override
  @JsonKey()
  final int totalMedicineCost;
  @override
  @JsonKey()
  final int totalEggsCollected;
  @override
  @JsonKey()
  final int netProfit;
  @override
  @JsonKey()
  final int quantityAnimal;
  @override
  @JsonKey()
  final int deadQuantity;
  final List<GrowthStageReport> _growthStageReports;
  @override
  @JsonKey()
  List<GrowthStageReport> get growthStageReports {
    if (_growthStageReports is EqualUnmodifiableListView)
      return _growthStageReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_growthStageReports);
  }

  final List<VaccineDetail> _vaccineDetails;
  @override
  @JsonKey()
  List<VaccineDetail> get vaccineDetails {
    if (_vaccineDetails is EqualUnmodifiableListView) return _vaccineDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vaccineDetails);
  }

  final List<PrescriptionDetail> _prescriptionDetails;
  @override
  @JsonKey()
  List<PrescriptionDetail> get prescriptionDetails {
    if (_prescriptionDetails is EqualUnmodifiableListView)
      return _prescriptionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prescriptionDetails);
  }

  final List<FoodUsageDetail> _foodUsageDetails;
  @override
  @JsonKey()
  List<FoodUsageDetail> get foodUsageDetails {
    if (_foodUsageDetails is EqualUnmodifiableListView)
      return _foodUsageDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodUsageDetails);
  }

  @override
  String toString() {
    return 'ReportFarmingBatchDto(farmingBatchId: $farmingBatchId, farmingBatchName: $farmingBatchName, cageName: $cageName, startDate: $startDate, endDate: $endDate, totalEggSales: $totalEggSales, totalMeatSales: $totalMeatSales, totalFoodCost: $totalFoodCost, totalVaccineCost: $totalVaccineCost, totalMedicineCost: $totalMedicineCost, totalEggsCollected: $totalEggsCollected, netProfit: $netProfit, quantityAnimal: $quantityAnimal, deadQuantity: $deadQuantity, growthStageReports: $growthStageReports, vaccineDetails: $vaccineDetails, prescriptionDetails: $prescriptionDetails, foodUsageDetails: $foodUsageDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportFarmingBatchDtoImpl &&
            (identical(other.farmingBatchId, farmingBatchId) ||
                other.farmingBatchId == farmingBatchId) &&
            (identical(other.farmingBatchName, farmingBatchName) ||
                other.farmingBatchName == farmingBatchName) &&
            (identical(other.cageName, cageName) ||
                other.cageName == cageName) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.totalEggSales, totalEggSales) ||
                other.totalEggSales == totalEggSales) &&
            (identical(other.totalMeatSales, totalMeatSales) ||
                other.totalMeatSales == totalMeatSales) &&
            (identical(other.totalFoodCost, totalFoodCost) ||
                other.totalFoodCost == totalFoodCost) &&
            (identical(other.totalVaccineCost, totalVaccineCost) ||
                other.totalVaccineCost == totalVaccineCost) &&
            (identical(other.totalMedicineCost, totalMedicineCost) ||
                other.totalMedicineCost == totalMedicineCost) &&
            (identical(other.totalEggsCollected, totalEggsCollected) ||
                other.totalEggsCollected == totalEggsCollected) &&
            (identical(other.netProfit, netProfit) ||
                other.netProfit == netProfit) &&
            (identical(other.quantityAnimal, quantityAnimal) ||
                other.quantityAnimal == quantityAnimal) &&
            (identical(other.deadQuantity, deadQuantity) ||
                other.deadQuantity == deadQuantity) &&
            const DeepCollectionEquality().equals(
              other._growthStageReports,
              _growthStageReports,
            ) &&
            const DeepCollectionEquality().equals(
              other._vaccineDetails,
              _vaccineDetails,
            ) &&
            const DeepCollectionEquality().equals(
              other._prescriptionDetails,
              _prescriptionDetails,
            ) &&
            const DeepCollectionEquality().equals(
              other._foodUsageDetails,
              _foodUsageDetails,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    farmingBatchId,
    farmingBatchName,
    cageName,
    startDate,
    endDate,
    totalEggSales,
    totalMeatSales,
    totalFoodCost,
    totalVaccineCost,
    totalMedicineCost,
    totalEggsCollected,
    netProfit,
    quantityAnimal,
    deadQuantity,
    const DeepCollectionEquality().hash(_growthStageReports),
    const DeepCollectionEquality().hash(_vaccineDetails),
    const DeepCollectionEquality().hash(_prescriptionDetails),
    const DeepCollectionEquality().hash(_foodUsageDetails),
  );

  /// Create a copy of ReportFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportFarmingBatchDtoImplCopyWith<_$ReportFarmingBatchDtoImpl>
  get copyWith =>
      __$$ReportFarmingBatchDtoImplCopyWithImpl<_$ReportFarmingBatchDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportFarmingBatchDtoImplToJson(this);
  }
}

abstract class _ReportFarmingBatchDto implements ReportFarmingBatchDto {
  factory _ReportFarmingBatchDto({
    required final String farmingBatchId,
    required final String farmingBatchName,
    required final String cageName,
    required final DateTime startDate,
    final DateTime? endDate,
    final int totalEggSales,
    final int totalMeatSales,
    final int totalFoodCost,
    final int totalVaccineCost,
    final int totalMedicineCost,
    final int totalEggsCollected,
    final int netProfit,
    final int quantityAnimal,
    final int deadQuantity,
    final List<GrowthStageReport> growthStageReports,
    final List<VaccineDetail> vaccineDetails,
    final List<PrescriptionDetail> prescriptionDetails,
    final List<FoodUsageDetail> foodUsageDetails,
  }) = _$ReportFarmingBatchDtoImpl;

  factory _ReportFarmingBatchDto.fromJson(Map<String, dynamic> json) =
      _$ReportFarmingBatchDtoImpl.fromJson;

  @override
  String get farmingBatchId;
  @override
  String get farmingBatchName;
  @override
  String get cageName;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  int get totalEggSales;
  @override
  int get totalMeatSales;
  @override
  int get totalFoodCost;
  @override
  int get totalVaccineCost;
  @override
  int get totalMedicineCost;
  @override
  int get totalEggsCollected;
  @override
  int get netProfit;
  @override
  int get quantityAnimal;
  @override
  int get deadQuantity;
  @override
  List<GrowthStageReport> get growthStageReports;
  @override
  List<VaccineDetail> get vaccineDetails;
  @override
  List<PrescriptionDetail> get prescriptionDetails;
  @override
  List<FoodUsageDetail> get foodUsageDetails;

  /// Create a copy of ReportFarmingBatchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportFarmingBatchDtoImplCopyWith<_$ReportFarmingBatchDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
