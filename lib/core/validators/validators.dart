bool isNumeric(String str) {
  final numericRegex = RegExp(r'^[0-9]+$');
  return numericRegex.hasMatch(str);
}