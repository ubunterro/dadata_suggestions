import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fms_unit_suggestions.g.dart';

/// Represents an object used to hold API response.
@JsonSerializable(
  explicitToJson: true,
)
class FmsUnitSuggestions {
  @JsonKey(name: 'suggestions')
  List<FmsUnitResponse>? suggestions;

  FmsUnitSuggestions();

  factory FmsUnitSuggestions.fromJson(Map<String, dynamic> json) =>
      _$FmsUnitSuggestionsFromJson(json);

  Map<String, dynamic> toJson() => _$FmsUnitSuggestionsToJson(this);
}
