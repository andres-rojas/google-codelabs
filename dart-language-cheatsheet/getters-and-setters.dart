import './tests.dart';

void main() {
  Tests([
    Test(
      'ShoppingCart.total returns the sum of its prices',
      () {
        ShoppingCart cart = ShoppingCart()..prices = [5.0, 10.5];
        return cart.total == 15.5;
      },
    ),
    Test(
      'Setting ShoppingCart.prices replaces the list of prices',
      () {
        ShoppingCart cart = ShoppingCart()..prices = [5.0, 10.5];
        return cart.total == 15.5;
      },
    ),
    Test(
      'Setting ShoppingCart.prices throws an InvalidPriceException if set to a list containing a negative price',
      () {
        try {
          ShoppingCart()..prices = [5.0, -10.5];
        } catch (e) {
          return e is InvalidPriceException;
        }
        return false;
      },
    ),
  ]).run();
}

class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  double get total => _prices.fold(0, (sum, price) => sum + price);

  set prices(List<double> p) {
    if (p.any((price) => price < 0)) {
      throw InvalidPriceException();
    }

    _prices = p;
  }
}
