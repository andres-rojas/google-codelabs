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
