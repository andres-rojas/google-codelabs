import 'package:test/test.dart';
import 'package:dart_iterables/practice-writing-a-test-predicate.dart';

void main() {
  test(
    'singleWhere() returns element iff it is the sole element that contains \'a\' and starts with \'M\'',
    () {
      const Iterable<String> names = ['Bob', 'Jill', 'Moana', 'Peter'];
      String element = singleWhere(names);

      expect(element, isA<String>());
      expect(element, startsWith('M'));
      expect(element, contains('a'));
    },
  );

  group(
    'singleWhere() throws a StateError if',
    () {
      test(
        'more than one contains \'a\' and starts with \'M\'',
        () {
          const Iterable<String> names = ['Max', 'Jill', 'Moana', 'Peter'];
          expect(() {
            singleWhere(names);
          }, throwsA(isA<StateError>()));
        },
      );

      test(
        'no element contains \'a\' and starts with \'M\'',
        () {
          const Iterable<String> names = ['Bob', 'Jill', 'Molly', 'Peter'];
          expect(() {
            singleWhere(names);
          }, throwsA(isA<StateError>()));
        },
      );
    },
  );
}
