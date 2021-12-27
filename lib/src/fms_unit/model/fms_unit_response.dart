import 'package:json_annotation/json_annotation.dart';
import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_response_data.dart';
part 'fms_unit_response.g.dart';

/// Represents an object used to hold API response.
@JsonSerializable()
class FmsUnitResponse {
  @JsonKey(name: 'value')
  String? value;

  @JsonKey(name: 'unrestricted_value')
  String? unrestrictedValue;

  @JsonKey(name: 'data')
  FmsUnitResponseData? data;

  FmsUnitResponse();

  factory FmsUnitResponse.fromJson(Map<String, dynamic> json) =>
      _$FmsUnitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FmsUnitResponseToJson(this);
}
