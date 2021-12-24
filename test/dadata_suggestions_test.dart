import 'package:flutter_test/flutter_test.dart';

import 'package:dadata_suggestions/dadata_suggestions.dart';

const String token = '8dfe375e50181b3f1e7d0dfd1070f1559d73d2c5';

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

    assert(result.suggestions != null);

    result.suggestions?.forEach((element) {
      print(element.value);
    });
  });
}
