import './tests.dart';

void main() {
  Tests([
    Test(
      'upperCaseIt should return the uppercase version of \'str\', if \'str\' is not null',
      () => upperCaseIt('foo') == 'FOO',
    ),
    Test(
      'upperCaseIt should return null if \'str\' is null',
      () => upperCaseIt(null) == null,
    ),
  ]).run();
}

String? upperCaseIt(String? str) {
  return str?.toUpperCase();
}
