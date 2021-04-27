import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/string-interpolation.dart';

void main() {
  test(
    'stringify returns a string containing both integers separated by a space',
    () {
      expect(stringify(2, 3), '2 3');
    },
  );
}
