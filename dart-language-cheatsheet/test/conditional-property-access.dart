import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/conditional-property-access.dart';

void main() {
  test(
    'upperCaseIt should return the uppercase version of \'str\', if \'str\' is not null',
    () {
      expect(upperCaseIt('foo'), 'FOO');
    },
  );

  test(
    'upperCaseIt should return null if \'str\' is null',
    () {
      expect(upperCaseIt(null), null);
    },
  );
}
