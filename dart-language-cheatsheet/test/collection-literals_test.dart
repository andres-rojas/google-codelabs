import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/collection-literals.dart';

void main() {
  test(
    'assign aListOfStrings a list containing \'a\', \'b\', and \'c\' in that order',
    () {
      expect(aListOfStrings, equals(['a', 'b', 'c']));
    },
  );

  test(
    'assign aSetOfInts a set containing 3, 4, and 5',
    () {
      expect(aSetOfInts, containsAll({3, 4, 5}));
    },
  );

  test(
    'assign aMapOfStringsToInts a map of String to int so that the \'myKey\' index returns 12',
    () {
      expect(aMapOfStringsToInts['myKey'], 12);
    },
  );

  test(
    'assign anEmptyListOfDouble an empty List<double>',
    () {
      expect(anEmptyListOfDouble, allOf(isEmpty, isA<List<double>>()));
    },
  );

  test(
    'assign anEmptySetOfString an empty Set<String>',
    () {
      expect(anEmptySetOfString, allOf(isEmpty, isA<Set<String>>()));
    },
  );

  test(
    'assign anEmptyMapOfDoublesToInts an empty Map of double to int',
    () {
      expect(
        anEmptyMapOfDoublesToInts,
        allOf(
          isEmpty,
          isA<Map<double, int>>(),
        ),
      );
    },
  );
}
