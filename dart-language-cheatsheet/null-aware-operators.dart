import './test.dart';

void main() {
  test(
    'Substitute an operator that makes \'a string\' be assigned to baz.',
    () => baz == 'a string',
  );

  test(
    'Substitute an operator that makes \'a string\' be assigned to bar.',
    () {
      updateSomeVars();
      return bar == 'a string';
    },
  );
}

String? foo = 'a string';
String? bar; // = null

// Substitute an operator that makes 'a string' be assigned to baz.
String? baz = foo ?? bar;

void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= 'a string';
}
