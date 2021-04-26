import './tests.dart';

void main() {
  Tests([
    Test(
      'joinWithCommas accepts one to five integers, then returns a string of those numbers separated by commas',
      () =>
          joinWithCommas(1) == '1' &&
          joinWithCommas(1, 2, 3) == '1,2,3' &&
          joinWithCommas(1, 1, 1, 1, 1) == '1,1,1,1,1',
    ),
  ]).run();
}

String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  List<int> integers = [a];
  if (b != null) integers.add(b);
  if (c != null) integers.add(c);
  if (d != null) integers.add(d);
  if (e != null) integers.add(e);

  return integers.join(',');
}
