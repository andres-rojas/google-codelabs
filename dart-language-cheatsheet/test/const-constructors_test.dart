import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/const-constructors.dart';

void main() {
  test(
    'Recipe() constructor has three parameters: ingredients, calories, and milligramsOfSodium (in that order)',
    () {
      const List<String> ingredients = ['foo'];
      const int calories = 100;
      const double milligramsOfSodium = 200;

      const Recipe r = Recipe(ingredients, calories, milligramsOfSodium);

      expect(r.ingredients, ingredients);
      expect(r.calories, calories);
      expect(r.milligramsOfSodium, milligramsOfSodium);
    },
  );
}
