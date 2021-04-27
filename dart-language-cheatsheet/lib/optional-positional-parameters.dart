String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  List<int> integers = [a];
  if (b != null) integers.add(b);
  if (c != null) integers.add(c);
  if (d != null) integers.add(d);
  if (e != null) integers.add(e);

  return integers.join(',');
}
