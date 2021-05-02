void main() {
  // Try using question mars to correct the type declarations
  List<String> aListOfStrings = ['one', 'two', 'three'];
  // List<String> aNullableListOfStrings = [];
  List<String?> aNullableListOfStrings = [];
  // List<String> aListOfNullableStrings = ['one', null, 'three'];
  List<String?> aListOfNullableStrings = ['one', null, 'three'];

  print('aListOfStrings is $aListOfStrings.');
  print('aNullableListOfStrings is $aNullableListOfStrings.');
  print('aListOfNullableStrings is $aListOfNullableStrings.');
}
