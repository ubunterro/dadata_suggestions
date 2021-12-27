import 'package:json_annotation/json_annotation.dart';

part 'fms_unit_types.g.dart';

/// Types of existing passport issuer kinds
@JsonEnum(alwaysCreate: true)
enum FmsUnitType {
  /// 0 — подразделение ФМС
  @JsonValue("0")
  fmsSubdivision,

  /// 1 — ГУВД или МВД региона
  @JsonValue("1")
  regionGUVD_MVD,

  /// 2 — УВД или ОВД района или города
  @JsonValue("2")
  regionOrCityUVD_OVD,

  /// 3 — отделение полиции
  @JsonValue("3")
  policeDepartment,
}

extension FmsUnitTypeValue on FmsUnitType{
  static String? enumToString(FmsUnitType fmsUnitType) => _$FmsUnitTypeEnumMap[fmsUnitType];
}




