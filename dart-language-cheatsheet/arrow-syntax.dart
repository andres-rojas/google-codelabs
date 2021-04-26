import './tests.dart';

void main() {
  Tests([
    Test(
      'MyClass.product returns the product of the object\'s properties',
      () =>
          MyClass().product ==
          MyClass().value1 * MyClass().value2 * MyClass().value3,
    ),
    Test(
      'MyClass.incrementValue1 adds 1 to MyClass.value1',
      () {
        MyClass mc = MyClass();
        final int originalValue = mc.value1;
        mc.incrementValue1();
        return mc.value1 == originalValue + 1;
      },
    ),
    Test(
      'MyClass.joinWithCommas returns a string containing each item in given list, separated by commas (e.g. \'a,b,c\')',
      () => MyClass().joinWithCommas(['a', 'b', 'c']) == 'a,b,c',
    ),
  ]).run();
}

class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Returns the product of the above values:
  int get product => value1 * value2 * value3;

  // Adds 1 to value1:
  void incrementValue1() => value1++;

  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
}
