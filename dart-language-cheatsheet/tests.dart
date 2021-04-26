import 'package:ansicolor/ansicolor.dart';

final AnsiPen _cyan = new AnsiPen()..cyan(bold: true);
final AnsiPen _green = new AnsiPen()..green(bold: true);
final AnsiPen _red = new AnsiPen()..red(bold: true);
const String _tab = '    ';

extension Pluralize on String {
  String pluralize(int count) => count == 1 ? this : this + 's';
}

typedef bool TestFn();

class Test {
  final String description;
  final TestFn test;
  bool _result = false;
  bool get result => _result;

  Test(this.description, this.test) {
    _result = test();
  }

  @override
  String toString() =>
      _result ? _green('✔ ' + description) : _red('✗ ' + description);
}

class Tests {
  final List<Test> tests;

  const Tests(this.tests);

  void run() {
    final List<Test> _passed = [];
    final List<Test> _failed = [];
    tests.forEach((test) {
      test.result ? _passed.add(test) : _failed.add(test);
    });

    print(_cyan(
        tests.length.toString() + ' test'.pluralize(tests.length) + ' found!'));

    if (_passed.length > 0) {
      print('\n' +
          _tab +
          _green(_passed.length.toString() +
              ' test'.pluralize(_passed.length) +
              ' passed:'));
      _passed.forEach((test) {
        print((_tab * 2) + test.toString());
      });
    }

    if (_failed.length > 0) {
      print('\n' +
          _tab +
          _red(_failed.length.toString() +
              ' test'.pluralize(_failed.length) +
              ' failed:'));
      _failed.forEach((test) {
        print((_tab * 2) + test.toString());
      });
    }
  }
}
