import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/initializer-lists.dart';

void main() {
  test(
    'Assign the first two characters of the given word to letterOne & letterTwo',
    () {
      final String word = 'foo';
      final FirstTwoLetters foo = FirstTwoLetters(word);

      expect(foo.letterOne, word[0]);
      expect(foo.letterTwo, word[1]);
    },
  );

  test('Assert that given word is not less than two characters', () {
    expect(() {
      FirstTwoLetters('f');
    }, throwsA(isA<AssertionError>()));
  });
}
