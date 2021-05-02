import 'package:test/test.dart';
import 'package:dart_asynchronous_programming/using-async-and-await.dart';

void main() {
  test(
    'reportUserRole returns the string: \'User role: <user role>\'',
    () async {
      final String msg = await reportUserRole();
      expect(msg, matches(RegExp(r'^User role: .+$')));
    },
  );

  test(
    'reportLogins returns the string: \'Total number of logins: <# of logins>\'',
    () async {
      final String msg = await reportLogins();
      expect(msg, matches(RegExp(r'^Total number of logins: [1-9][0-9]*$')));
    },
  );
}
