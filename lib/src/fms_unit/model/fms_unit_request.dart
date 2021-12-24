import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fms_unit_request.g.dart';

/// Represents an object used to hold API response.
@JsonSerializable(
  explicitToJson: true, createFactory: false
)
class FmsUnitRequest {
  @JsonKey(name: 'query', required: true)
  final String query;

  final String? _regionCodeFilter;
  final FmsUnitType? _fmsTypeFilter;

  FmsUnitRequest(this.query,
      {String? regionCodeFilter, FmsUnitType? fmsTypeFilter})
      : _regionCodeFilter = regionCodeFilter,
        _fmsTypeFilter = fmsTypeFilter;

  @JsonKey(name: 'filters', includeIfNull: false)
  List<Map<String, dynamic>>? get filters {
    if (_regionCodeFilter == null && _fmsTypeFilter == null) {
      return null;
    }

    Map<String, dynamic> filters = {};

    if (_regionCodeFilter != null) {
      filters['region_code'] = _regionCodeFilter;
    }

    if (_fmsTypeFilter != null) {
      filters['type'] = _fmsTypeFilter;
    }

    return [filters];
  }

  Map<String, dynamic> toJson() => _$FmsUnitRequestToJson(this);
}
