/// data.code	Код подразделения
/// data.name	Название подразделения в творительном падеже («кем выдан?»)
/// data.region_code	Код региона (2 цифры)
/// data.type	Вид подразделения [FmsUnitType] (1 цифра)
///   0 — подразделение ФМС
///   1 — ГУВД или МВД региона
///   2 — УВД или ОВД района или города
///   3 — отделение полиции

import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fms_unit_response_data.g.dart';

/// Represents an object used to hold API response.
@JsonSerializable(
  explicitToJson: true,
)
class FmsUnitResponseData {
  @JsonKey(name: 'code')
  String? code;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'region_code')
  String? regionCode;

  @JsonKey(name: 'type')
  FmsUnitType? fmsUnitType;

  FmsUnitResponseData();

  factory FmsUnitResponseData.fromJson(Map<String, dynamic> json) =>
      _$FmsUnitResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$FmsUnitResponseDataToJson(this);
}
