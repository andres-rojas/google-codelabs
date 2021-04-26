import './tests.dart';

void main() {
  Tests([
    Test(
      'Declare a nullable String named name with the value \'Jane\'',
      () => name == 'Jane',
    ),
    Test(
      'Declare a nullable String named address with the value null',
      () => address == null,
    ),
  ]).run();
}

String? name = 'Jane';
String? address;
