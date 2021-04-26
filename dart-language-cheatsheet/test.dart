import 'package:ansicolor/ansicolor.dart';

void test(String description, bool result) {
  AnsiPen green = new AnsiPen()..green(bold: true);
  AnsiPen red = new AnsiPen()..red(bold: true);

  print(result ? green('Pass: ' + description) : red('FAIL: ' + description));
}
