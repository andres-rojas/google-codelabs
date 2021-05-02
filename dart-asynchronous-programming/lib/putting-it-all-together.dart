// Part 1
String addHello(user) => 'Hello $user';

// Part 2
// You can call the provided async function fetchUsername()
// to return the username.
Future<String> greetUser() async {
  final String name = await fetchUsername();
  return addHello(name);
}

// Part 3
// You can call the provided async function logoutUser()
// to log out the user.
Future<String> sayGoodbye() async {
  try {
    final String name = await logoutUser();
    return '$name Thanks, see you next time';
  } catch (e) {
    return 'Error: Failed to sayGoodbye';
  }
}

const String user = 'Jenny';

Future<String> fetchUsername() {
  return Future.delayed(
    Duration(seconds: 2),
    () => user,
  );
}

Future<String> logoutUser() {
  return Future.delayed(
    Duration(seconds: 2),
    () => user,
  );
}
