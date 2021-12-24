import 'package:dadata_suggestions/key.dart';
import 'package:dadata_suggestions/src/fms_unit/model/fms_unit_request.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dadata_suggestions/dadata_suggestions.dart';

void main() {
  test('Nothing', () {
    DadataSuggestions('');
    final nothing = null;
    expect(nothing, nothing);
  });

  test('granular geocode', () async {
    var client = DadataSuggestions(token);
    var request = AddressSuggestionRequest('железногорск',
        upperBoundary: LevelBoundry.city, lowerBoundary: LevelBoundry.city);
    var result = await client.suggest(request);

    assert(result?.suggestions != null);

    result?.suggestions?.forEach((element) {
      print(element.value);
    });
  });

  test('fmsUnit', () async {
    var req = FmsUnitRequest(
        '460-001' /*, regionCodeFilter: "46", fmsTypeFilter: FmsUnitType.regionGUVD_MVD*/);
    var client = DadataSuggestions(token);
    var result = await client.getFmsUnit(req);

    assert(result != null);

    print(result);
  });
}
