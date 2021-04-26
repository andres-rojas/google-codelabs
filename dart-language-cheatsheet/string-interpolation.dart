import './tests.dart';

void main() {
  Tests([
    Test(
      'stringify returns a string containing both integers separated by a space',
      () => stringify(2, 3) == '2 3',
    ),
  ]).run();
}

String stringify(int x, int y) {
  return '$x $y';
}
