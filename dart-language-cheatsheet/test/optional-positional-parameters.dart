import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/optional-positional-parameters.dart';

void main() {
  test(
    'joinWithCommas accepts one to five integers, then returns a string of those numbers separated by commas',
    () {
      expect(joinWithCommas(1), '1');
      expect(joinWithCommas(1, 2, 3), '1,2,3');
      expect(joinWithCommas(1, 1, 1, 1, 1), '1,1,1,1,1');
    },
  );
}
