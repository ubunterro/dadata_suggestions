import 'package:dadata_suggestions/key.dart';
import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_request.dart';
import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_types.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dadata_suggestions/dadata_suggestions.dart';

void main() {
  /// Tests getting address suggestion with a given granular filter
  test('Granular geocode', () async {
    var client = DadataSuggestions(token);
    var request = AddressSuggestionRequest('Железногорск',
        upperBoundary: LevelBoundry.city, lowerBoundary: LevelBoundry.city);
    var result = await client.suggest(request);

    var cities = result?.suggestions?.map((e) => e.value).toList();
    expect(cities?.contains('Иркутская обл, г Железногорск-Илимский'), isTrue);
    expect(cities?.contains('Курская обл, г Железногорск'), isTrue);
  });

  test('fmsUnit', () async {
    var req = FmsUnitRequest(
        '500-103', regionCodeFilter: "50", fmsTypeFilter: FmsUnitType.fmsSubdivision);
    var client = DadataSuggestions(token);
    var result = await client.getFmsUnit(req);

    expect(result?.suggestions?.first.value, equals('ГУ МВД РОССИИ ПО МОСКОВСКОЙ ОБЛ.', ));
  });
}
