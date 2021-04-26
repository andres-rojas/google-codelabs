import 'package:ansicolor/ansicolor.dart';

typedef bool TestFn();

void test(String description, TestFn t) {
  AnsiPen green = new AnsiPen()..green(bold: true);
  AnsiPen red = new AnsiPen()..red(bold: true);

  print(t() ? green('Pass: ' + description) : red('FAIL: ' + description));
}
