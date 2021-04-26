import './tests.dart';

void main() {
  Tests([
    Test(
      'MyDataObject.copyWith should return a new MyDataObject with data from the passed object (if any) copied into the new object\'s properties',
      () {
        MyDataObject original = MyDataObject();

        MyDataObject someNew = original.copyWith(newDouble: 5.6);
        MyDataObject allNew = original.copyWith(
          newInt: 2,
          newString: 'foo',
          newDouble: 3.4,
        );

        return someNew.anInt == original.anInt &&
            someNew.aString == original.aString &&
            someNew.aDouble == 5.6 &&
            allNew.anInt == 2 &&
            allNew.aString == 'foo' &&
            allNew.aDouble == 3.4;
      },
    ),
  ]).run();
}

class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
    this.anInt = 1,
    this.aString = 'Old!',
    this.aDouble = 2.0,
  });

  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(
      anInt: newInt ?? this.anInt,
      aString: newString ?? this.aString,
      aDouble: newDouble ?? this.aDouble,
    );
  }
}
