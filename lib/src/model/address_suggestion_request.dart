import 'package:json_annotation/json_annotation.dart';

import 'address_suggestion_constraint.dart';
import 'address_suggestion_priority.dart';
import 'address_suggestion_radius_constraint.dart';
import 'level_boundry.dart';
part 'address_suggestion_request.g.dart';

///Used to call address sugestions API.
@JsonSerializable(
  explicitToJson: true,
)
class AddressSuggestionRequest {
  @JsonKey(name: 'query', required: true)
  String query;

  @JsonKey(name: 'count')
  int? count = 10;

  @JsonKey(name: 'language')
  String? language = 'ru';

  @JsonKey(name: 'locations')
  List<AddressSuggestionConstraint>? constraints;

  @JsonKey(name: 'locations_geo')
  List<AddressSuggestionRadiusConstraint>? radiusConstraints;

  @JsonKey(name: 'locations_boost')
  List<AddressSuggestionPriority>? locationsPriority;

  LevelBoundry? _upperBoundary;
  LevelBoundry? _lowerBoundary;

  @JsonKey(name: 'from_bound')
  Map<String, String>? get upperBoundary {
    if (_upperBoundary?.value != null){
      return {'value' : _upperBoundary!.value};
    } else {
      return null;
    }
  }

  set upperBoundary(dynamic value) {
    if (value is String) {
      _upperBoundary = LevelBoundryValue.forValue(value);
      return;
    }
    if (value is LevelBoundry) {
      _upperBoundary = value;
      return;
    }
    _upperBoundary = LevelBoundry.undefined;
  }

  @JsonKey(name: 'to_bound')
  Map<String, String>? get lowerBoundary {
    if (_lowerBoundary?.value != null){
      return {'value' : _lowerBoundary!.value};
    } else {
      return null;
    }
  }

  set lowerBoundary(dynamic value) {
    if (value is String) {
      _lowerBoundary = LevelBoundryValue.forValue(value);
      return;
    }
    if (value is LevelBoundry) {
      _lowerBoundary = value;
    }
    _lowerBoundary = LevelBoundry.undefined;
  }

  ///AddressSuggestionRequest represents an serializable object
  ///used to perform suggestion queries.
  ///[query] is required field.
  ///[count] defaults to `10` and [language] defaults to `ru`.
  AddressSuggestionRequest(
    this.query, {
    this.count,
    this.language,
    this.constraints,
    this.radiusConstraints,
    this.locationsPriority,
    LevelBoundry? upperBoundary,
    LevelBoundry? lowerBoundary,
  })  : this._upperBoundary = upperBoundary,
        this._lowerBoundary = lowerBoundary;

  factory AddressSuggestionRequest.fromJson(Map<String, dynamic> json) =>
      _$AddressSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddressSuggestionRequestToJson(this);
}
