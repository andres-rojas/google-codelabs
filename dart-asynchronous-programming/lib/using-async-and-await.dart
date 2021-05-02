// Part 1
// You can call the provided async function fetchRole()
// to return the user role.
Future<String> reportUserRole() async {
  final String role = await fetchRole();
  return 'User role: $role';
}

// Part 2
// Implement reportLogins here
// You can call the provided async function fetchLoginAmount()
// to return the number of times that the user has logged in.
Future<String> reportLogins() async {
  final int logins = await fetchLoginAmount();
  return 'Total number of logins: ${logins}';
}

Future<String> fetchRole() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'foo',
  );
}

Future<int> fetchLoginAmount() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 1,
  );
}
