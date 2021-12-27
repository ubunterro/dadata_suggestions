import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fms_unit_response_data.g.dart';

/// Represents an object used to hold API response.
@JsonSerializable()
class FmsUnitResponseData {
  /// Subdivision code
  @JsonKey(name: 'code')
  String? code;

  /// Subdivision name in instrumental case (Given by whom?)
  @JsonKey(name: 'name')
  String? name;

  /// Region code (2 digits)
  @JsonKey(name: 'region_code')
  String? regionCode;

  @JsonKey(name: 'type')
  FmsUnitType? fmsUnitType;

  FmsUnitResponseData();

  factory FmsUnitResponseData.fromJson(Map<String, dynamic> json) =>
      _$FmsUnitResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$FmsUnitResponseDataToJson(this);
}
