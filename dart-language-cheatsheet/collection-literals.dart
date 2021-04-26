import './tests.dart';

void main() {
  Tests([
    Test(
      'assign aListOfStrings a list containing \'a\', \'b\', and \'c\' in that order',
      () =>
          aListOfStrings.length == 3 &&
          aListOfStrings[0] == 'a' &&
          aListOfStrings[1] == 'b' &&
          aListOfStrings[2] == 'c',
    ),
    Test(
      'assign aSetOfInts a set containing 3, 4, and 5',
      () => aSetOfInts.containsAll({3, 4, 5}),
    ),
    Test(
      'assign aMapOfStringsToInts a map of String to int so that the \'myKey\' index returns 12',
      () => aMapOfStringsToInts['myKey'] == 12,
    ),
    Test(
      'assign anEmptyListOfDouble an empty List<double>',
      () => anEmptyListOfDouble is List<double> && anEmptyListOfDouble.isEmpty,
    ),
    Test(
      'assign anEmptySetOfString an empty Set<String>',
      () => anEmptySetOfString is Set<String> && anEmptySetOfString.isEmpty,
    ),
    Test(
      'assign anEmptyMapOfDoublesToInts an empty Map of double to int',
      () =>
          anEmptyMapOfDoublesToInts is Map<double, int> &&
          anEmptyMapOfDoublesToInts.isEmpty,
    ),
  ]).run();
}

final aListOfStrings = ['a', 'b', 'c'];
final aSetOfInts = {3, 4, 5};
final aMapOfStringsToInts = {'myKey': 12};
final anEmptyListOfDouble = <double>[];
final anEmptySetOfString = <String>{};
final anEmptyMapOfDoublesToInts = <double, int>{};
