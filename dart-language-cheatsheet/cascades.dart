import './tests.dart';

void main() {
  Tests([
    Test(
      'BigObject.anInt is set to 1',
      () => fillBigObject(BigObject()).anInt == 1,
    ),
    Test(
      'BigObject.aString is set to \'String!\'',
      () => fillBigObject(BigObject()).aString == 'String!',
    ),
    Test(
      'BigObject.aList is set to [3.0]',
      () {
        final BigObject bo = fillBigObject(BigObject());
        return bo.aList.length == 1 && bo.aList[0] == 3.0;
      },
    ),
  ]).run();
}

class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  return BigObject()
    ..anInt = 1
    ..aString = 'String!'
    ..aList = [3.0]
    ..allDone();
}
