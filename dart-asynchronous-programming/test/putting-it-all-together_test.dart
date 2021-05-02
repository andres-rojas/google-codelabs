import 'package:test/test.dart';
import 'package:dart_asynchronous_programming/putting-it-all-together.dart';

void main() {
  test(
    'addHello returns its String argument preceded by \'Hello\'',
    () {
      expect(addHello(user), 'Hello $user');
    },
  );

  test(
    'greetUser gets the username via fetchUsername and returns the result of passing it to addHello',
    () async {
      final String msg = await greetUser();
      expect(msg, 'Hello $user');
    },
  );

  test(
    'sayGoodbye returns the string \'<user> Thanks, see you next time\'',
    () async {
      final String msg = await sayGoodbye();
      expect(msg, matches(RegExp(r'^.+ Thanks, see you next time$')));
    },
  );
}
