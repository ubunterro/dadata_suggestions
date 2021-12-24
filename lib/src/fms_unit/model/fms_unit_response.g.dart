// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fms_unit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FmsUnitResponse _$FmsUnitResponseFromJson(Map<String, dynamic> json) =>
    FmsUnitResponse()
      ..value = json['value'] as String?
      ..unrestrictedValue = json['unrestricted_value'] as String?
      ..data = json['data'] == null
          ? null
          : FmsUnitResponseData.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$FmsUnitResponseToJson(FmsUnitResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unrestricted_value': instance.unrestrictedValue,
      'data': instance.data?.toJson(),
    };
