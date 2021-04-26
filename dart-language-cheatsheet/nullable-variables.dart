import './test.dart';

void main() {
  test(
    'Declare a nullable String named name with the value \'Jane\'',
    name == 'Jane',
  );

  test(
    'Declare a nullable String named address with the value null',
    address == null,
  );
}

String? name = 'Jane';
String? address;
