// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fms_unit_suggestions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FmsUnitSuggestions _$FmsUnitSuggestionsFromJson(Map<String, dynamic> json) =>
    FmsUnitSuggestions()
      ..suggestions = (json['suggestions'] as List<dynamic>?)
          ?.map((e) => FmsUnitResponse.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FmsUnitSuggestionsToJson(FmsUnitSuggestions instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions?.map((e) => e.toJson()).toList(),
    };
