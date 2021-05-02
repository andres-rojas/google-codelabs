import 'package:test/test.dart';
import 'package:dart_iterables/verify-iterable-satisfies-condition.dart';

void main() {
  test(
    'anyUserUnder18 returns true if at least one user is 17 or younger',
    () {
      final Iterable<User> people = [
        User('Alice', 35),
        User('Bob', 17),
        User('Charlie', 72),
      ];

      final Iterable<User> noKids = [
        User('Alice', 35),
        User('Bill', 18),
        User('Charlie', 72),
      ];

      expect(anyUserUnder18(people), isTrue);
      expect(anyUserUnder18(noKids), isFalse);
    },
  );

  test(
    'everyUserOver13 returns true if all users are 14 or older',
    () {
      final Iterable<User> people = [
        User('Alice', 35),
        User('Bob', 13),
        User('Charlie', 72),
      ];

      final Iterable<User> noKids = [
        User('Alice', 35),
        User('Bill', 14),
        User('Charlie', 72),
      ];

      expect(everyUserOver13(people), isFalse);
      expect(everyUserOver13(noKids), isTrue);
    },
  );
}
