import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/named-constructors.dart';

void main() {
  test(
    'Color.black is a constructor that sets all properties to zero',
    () {
      final Color black = Color.black();
      expect(black.red, 0);
      expect(black.green, 0);
      expect(black.blue, 0);
    },
  );
}
