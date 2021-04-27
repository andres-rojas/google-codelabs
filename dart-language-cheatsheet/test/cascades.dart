import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/cascades.dart';

void main() {
  group('fillBigObject generates a BigObject', () {
    final BigObject bo = fillBigObject(BigObject());

    test('with anInt property is set to 1', () {
      expect(bo.anInt, 1);
    });

    test('with aString property is set to \'String!\'', () {
      expect(bo.aString, 'String!');
    });

    test('with aList property is set to [3.0]', () {
      expect(bo.aList.length, 1);
      expect(bo.aList.first, 3.0);
    });

    test('which calls allDone()', () {
      expect(bo.done, true);
    });
  });
}
