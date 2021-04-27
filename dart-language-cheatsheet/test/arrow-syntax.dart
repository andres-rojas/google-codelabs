import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/arrow-syntax.dart';

void main() {
  test('MyClass.product returns the product of the object\'s properties', () {
    final MyClass mc = MyClass();
    expect(mc.product, mc.value1 * mc.value2 * mc.value3);
  });

  test('MyClass.incrementValue1 adds 1 to MyClass.value1', () {
    final MyClass mc = MyClass();
    final int originalValue = mc.value1;
    mc.incrementValue1();
    expect(mc.value1, originalValue + 1);
  });

  test(
    'MyClass.joinWithCommas returns a string containing each item in given list, separated by commas (e.g. \'a,b,c\')',
    () {
      final MyClass mc = MyClass();
      expect(mc.joinWithCommas(['a', 'b', 'c']), 'a,b,c');
    },
  );
}
