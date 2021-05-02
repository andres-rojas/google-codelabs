import 'package:test/test.dart';
import 'package:dart_iterables/putting-it-all-together.dart';

void main() {
  const String alice = 'alice@foo.com';
  const String bob = 'bob@bar.net';
  const String charlie = 'charlie@baz.org';
  const String invalid = 'bob@bar';

  final EmailAddress aliceEmail = EmailAddress(alice);
  final EmailAddress bobEmail = EmailAddress(bob);
  final EmailAddress charlieEmail = EmailAddress(charlie);
  final EmailAddress invalidEmail = EmailAddress(invalid);

  final Iterable<EmailAddress> invalidEmails = [
    aliceEmail,
    invalidEmail,
    charlieEmail,
  ];

  test(
    'parseEmailAddress returns an Iterable<EmailAddress>',
    () {
      const Iterable<String> emails = [alice, bob, charlie];

      expect(parseEmailAddresses(emails), isA<Iterable<EmailAddress>>());
    },
  );

  group(
    'anyInvalidEmailAddress',
    () {
      final Iterable<EmailAddress> emails = [
        aliceEmail,
        bobEmail,
        charlieEmail,
      ];

      test(
        'returns a bool',
        () {
          expect(anyInvalidEmailAddress(emails), isA<bool>());
        },
      );

      test(
        'returns true if any element has an invalid address',
        () {
          expect(anyInvalidEmailAddress(emails), false);
          expect(anyInvalidEmailAddress(invalidEmails), true);
        },
      );
    },
  );

  group(
    'validEmailAddresses returns',
    () {
      final valid = validEmailAddresses(invalidEmails);
      test(
        'an Iterable<EmailAddress>',
        () {
          expect(valid, isA<Iterable<EmailAddress>>());
        },
      );

      test(
        'only valid email addresses',
        () {
          expect(valid, containsAll([aliceEmail, charlieEmail]));
          expect(valid, isNot(contains(invalidEmail)));
        },
      );
    },
  );
}
