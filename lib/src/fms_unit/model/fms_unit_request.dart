import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fms_unit_request.g.dart';

/// A request to FMS api
@JsonSerializable(
  createFactory: false
)
class FmsUnitRequest {
  @JsonKey(name: 'query', required: true)
  final String query;

  /// Two digits region code to filter out results by
  ///
  /// I.e. "32" as a filter will return only FMS units from Bryansk Region.
  final String? _regionCodeFilter;

  /// Filters out results by a given [FmsUnitType]
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
      filters['type'] = FmsUnitTypeValue.enumToString(_fmsTypeFilter!);
    }

    return [filters];
  }

  Map<String, dynamic> toJson() => _$FmsUnitRequestToJson(this);
}
