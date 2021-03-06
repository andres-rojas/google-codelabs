void main() {
  var items = ['Salad', 'Popcorn', 'Toast'];

  if (items.any((element) => element.contains('a'))) {
    print('At least one element contains "a"');
  }

  if (items.every((element) => element.length >= 5)) {
    print('All elements have length >= 5');
  }

  if (items.any((element) => element.contains('Z'))) {
    print('At least one element contains "Z"');
  } else {
    print('No element contains "Z"');
  }
}
