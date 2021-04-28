import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/getters-and-setters.dart';

void main() {
  test(
    'ShoppingCart.total returns the sum of its prices',
    () {
      final ShoppingCart cart = ShoppingCart()..prices = [5.0, 10.5];
      expect(cart.total, 15.5);
    },
  );

  test(
    'Setting ShoppingCart.prices throws an InvalidPriceException if set to a list containing a negative price',
    () {
      expect(
        () => ShoppingCart()..prices = [5.0, -10.5],
        throwsA(isA<InvalidPriceException>()),
      );
    },
  );
}
