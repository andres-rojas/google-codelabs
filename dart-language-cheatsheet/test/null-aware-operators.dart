import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/null-aware-operators.dart';

void main() {
  test(
    'Substitute an operator that makes \'a string\' be assigned to baz.',
    () {
      expect(baz, 'a string');
    },
  );

  test(
    'Substitute an operator that makes \'a string\' be assigned to bar.',
    () {
      updateSomeVars();
      expect(bar, 'a string');
    },
  );
}
