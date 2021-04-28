import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/using-this-in-a-constructor.dart';

void main() {
  test(
    'MyClass contructor provides default values for all properties',
    () {
      final MyClass mc = MyClass();

      expect(mc.anInt, isNotNull);
      expect(mc.aString, isNotNull);
      expect(mc.aDouble, isNotNull);
    },
  );
}
