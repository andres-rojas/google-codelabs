import 'package:test/test.dart';
import 'package:dart_language_cheatsheet/factory-constructors.dart';

void main() {
  group('if list passed to IntegerHolder.fromList has', () {
    test(
      'one value, create an IntegerSingle with that value',
      () {
        final List<int> list = [1];
        final IntegerHolder single = IntegerHolder.fromList(list);

        expect(single, isA<IntegerSingle>());
        if (single is IntegerSingle) expect(single.a, list[0]);
      },
    );

    test(
      'two values, create an IntegerDouble with the values in order',
      () {
        final List<int> list = [1, 2];
        final IntegerHolder id = IntegerHolder.fromList(list);

        expect(id, isA<IntegerDouble>());
        if (id is IntegerDouble) {
          expect(id.a, list[0]);
          expect(id.b, list[1]);
        }
      },
    );

    test(
      'three values, create an IntegerTriple with the values in order',
      () {
        final List<int> list = [1, 2, 3];
        final IntegerHolder triple = IntegerHolder.fromList(list);

        expect(triple, isA<IntegerTriple>());
        if (triple is IntegerTriple) {
          expect(triple.a, list[0]);
          expect(triple.b, list[1]);
          expect(triple.c, list[2]);
        }
      },
    );
  });

  test(
    'if list passed to IntegerHolder.fromList does not have 1-3 values, throw an Error',
    () {
      expect(() {
        IntegerHolder.fromList([]);
      }, throwsA(isA<Error>()));

      expect(() {
        IntegerHolder.fromList([1, 1, 1, 1]);
      }, throwsA(isA<Error>()));
    },
  );
}
