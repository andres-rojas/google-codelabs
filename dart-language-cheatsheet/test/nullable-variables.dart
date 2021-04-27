import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/nullable-variables.dart';

void main() {
  test(
    'Declare a nullable String named name with the value \'Jane\'',
    () {
      expect(name, 'Jane');
      name = null;
      expect(name, null);
    },
  );

  test(
    'Declare a nullable String named address with the value null',
    () {
      expect(address, null);
      address = 'foo';
      expect(address, isA<String>());
    },
  );
}
