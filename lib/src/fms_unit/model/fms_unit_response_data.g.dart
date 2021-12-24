// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fms_unit_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FmsUnitResponseData _$FmsUnitResponseDataFromJson(Map<String, dynamic> json) =>
    FmsUnitResponseData()
      ..code = json['code'] as String?
      ..name = json['name'] as String?
      ..regionCode = json['region_code'] as String?
      ..fmsUnitType = $enumDecodeNullable(_$FmsUnitTypeEnumMap, json['type']);

Map<String, dynamic> _$FmsUnitResponseDataToJson(
        FmsUnitResponseData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'region_code': instance.regionCode,
      'type': _$FmsUnitTypeEnumMap[instance.fmsUnitType],
    };

const _$FmsUnitTypeEnumMap = {
  FmsUnitType.fmsSubdivision: '0',
  FmsUnitType.regionGUVD_MVD: '1',
  FmsUnitType.regionOrCityUVD_OVD: '2',
  FmsUnitType.policeDepartment: '3',
};
