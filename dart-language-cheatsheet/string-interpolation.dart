import './test.dart';

void main() {
  test(
    'stringify returns a string containing both integers separated by a space',
    () => stringify(2, 3) == '2 3',
  );
}

String stringify(int x, int y) {
  return '$x $y';
}
