// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fms_unit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$FmsUnitRequestToJson(FmsUnitRequest instance) {
  final val = <String, dynamic>{
    'query': instance.query,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filters', instance.filters);
  return val;
}
