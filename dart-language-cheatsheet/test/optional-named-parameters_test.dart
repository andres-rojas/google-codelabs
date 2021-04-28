import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/optional-named-parameters.dart';

void main() {
  test(
    'MyDataObject.copyWith should return a new MyDataObject with data from the passed object (if any) copied into the new object\'s properties',
    () {
      final MyDataObject original = MyDataObject();

      final double someNewDouble = 5.6;
      final MyDataObject someNew = original.copyWith(newDouble: someNewDouble);

      final allNewInt = 2;
      final allNewString = 'foo';
      final allNewDouble = 3.4;
      final MyDataObject allNew = original.copyWith(
        newInt: allNewInt,
        newString: allNewString,
        newDouble: allNewDouble,
      );

      expect(someNew.anInt, original.anInt);
      expect(someNew.aString, original.aString);
      expect(someNew.aDouble, someNewDouble);

      expect(allNew.anInt, allNewInt);
      expect(allNew.aString, allNewString);
      expect(allNew.aDouble, allNewDouble);
    },
  );
}
