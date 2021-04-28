class IntegerHolder {
  IntegerHolder();

  factory IntegerHolder.fromList(List<int> list) {
    switch (list.length) {
      case 1:
        {
          return IntegerSingle(list[0]);
        }
      case 2:
        {
          return IntegerDouble(list[0], list[1]);
        }
      case 3:
        {
          return IntegerTriple(list[0], list[1], list[2]);
        }
      default:
        {
          throw Error();
        }
    }
  }
}

class IntegerSingle extends IntegerHolder {
  final int a;
  IntegerSingle(this.a);
}

class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;
  IntegerDouble(this.a, this.b);
}

class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;
  IntegerTriple(this.a, this.b, this.c);
}
