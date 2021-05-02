import 'package:test/test.dart';
import 'package:dart_iterables/filtering-elements-from-a-list.dart';

void main() {
  final User al = User('Al', 35);
  final User bob = User('Bob', 20);
  final User charlie = User('Charlie', 72);
  final User daria = User('Daria', 17);
  final Iterable<User> people = [al, bob, charlie, daria];

  test(
    'filterUnder21 returns an Iterable containing all users of age 21 or more',
    () {
      final Iterable<User> filtered = filterUnder21(people);
      expect(filtered, isA<Iterable>());
      expect(filtered, containsAll([al, charlie]));
      expect(filtered, isNot(anyOf(contains(bob), contains(daria))));
    },
  );

  test(
    'findShortNamed returns an Iterable containing all users with names of length 3 or less',
    () {
      final Iterable<User> filtered = findShortNamed(people);
      expect(filtered, isA<Iterable>());
      expect(filtered, containsAll([al, bob]));
      expect(filtered, isNot(anyOf(contains(charlie), contains(daria))));
    },
  );
}
