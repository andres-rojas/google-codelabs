int? couldReturnNullButDoesnt() => -3;

void main() {
  int? couldBeNullButIsnt = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];

  // add exclamation points to correct the broken assignments
  int a = couldBeNullButIsnt;
  // int b = listThatCouldHoldNulls.first; // first item in the list
  int b = listThatCouldHoldNulls.first!;
  // int c = couldReturnNullButDoesnt().abs(); // absolute value
  int c = couldReturnNullButDoesnt()!.abs();

  print('a is $a.');
  print('b is $b.');
  print('c is $c.');
}
