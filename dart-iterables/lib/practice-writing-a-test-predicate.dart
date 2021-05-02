String singleWhere(Iterable<String> items) {
  return items.singleWhere((s) => s.contains('a') && s.startsWith('M'));
}
