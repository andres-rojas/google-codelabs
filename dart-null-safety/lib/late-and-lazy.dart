// You can make this an instance method if _cache is a late field
// int _computeValue() {
//   print('In _computeValue...');
//   return 3;
// }

class CachedValueProvider {
  // You can use instance mthods in initializers if the assigned fields are late
  // final _cache = _computeValue();
  late final _cache = _computeValue();
  int get value => _cache;

  int _computeValue() {
    print('In _computeValue...');
    return 3;
  }
}

void main() {
  print('Calling constructor...');
  var provider = CachedValueProvider();
  print('Getting value...');
  print('The value is ${provider.value}!');
}
