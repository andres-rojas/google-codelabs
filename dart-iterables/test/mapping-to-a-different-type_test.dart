import 'package:test/test.dart';
import 'package:dart_iterables/mapping-to-a-different-type.dart';

void main() {
  test(
    'getNameAndAges returns an Iterable<String> with elements in the form of: \'{name} is {age}\'',
    () {
      final User alice = User('Alice', 21);
      final User bob = User('Bob', 35);
      final User charlie = User('Charlie', 75);
      final Iterable<User> people = [alice, bob, charlie];

      final result = getNameAndAges(people);

      expect(result, isA<Iterable<String>>());
      for (User p in people) {
        expect(result, contains("${p.name} is ${p.age}"));
      }
    },
  );
}
