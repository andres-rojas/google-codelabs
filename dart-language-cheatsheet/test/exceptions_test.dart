import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/exceptions.dart';

const String eol = 'End of logs!';

class TestLogger extends Logger {
  List<String> _logs = [];
  List<String> get logs => _logs;

  @override
  void logException(Type t, [String? msg]) {
    String log = t.toString();
    if (msg != null) {
      log += ': $msg';
    }
    _logs.add(log);
  }

  @override
  void doneLogging() {
    _logs.add(eol);
  }
}

void main() {
  test(
    'if untrustworthy() throws an ExceptionWithMesage call logger.logException with the exception type and message',
    () {
      TestLogger logger = TestLogger();
      const String msg = 'foo';

      tryFunction(() {
        throw ExceptionWithMessage(msg);
      }, logger);
      expect(logger.logs, contains('ExceptionWithMessage: $msg'));
    },
  );

  test(
    'if untrustworthy() throws an Exception, call logger.logException with the exception type',
    () {
      TestLogger logger = TestLogger();

      tryFunction(() {
        throw Exception();
      }, logger);
      expect(logger.logs, contains('_Exception'));
    },
  );

  test(
    'If untrustworthy() throws any other object, don\'t catch the exception',
    () {
      try {
        tryFunction(throw FormatException(), TestLogger());
      } catch (e) {
        expect(e, isFormatException);
      }
    },
  );

  test(
    'After everything\'s caught and handled, call logger.doneLogging',
    () {
      TestLogger logger = TestLogger();
      tryFunction(() {
        throw Exception();
      }, logger);
      expect(logger.logs.last, eol);
    },
  );
}
