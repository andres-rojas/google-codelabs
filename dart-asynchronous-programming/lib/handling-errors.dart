// Implement changeUsername here
Future<String> changeUsername() async {
  try {
    return await fetchNewUsername();
  } catch (e) {
    return e.toString();
  }
}

Future<String> fetchNewUsername() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'jane_smith_92',
  );
}
