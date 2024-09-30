List<String> extractLongNumbers(String text) {
  // Regular expression to find sequences of digits that are 7 or more in length
  final RegExp regex = RegExp(r'\b\d{7,}\b');
  
  // Find all matches in the text
  final matches = regex.allMatches(text);
  
  // Convert matches to a list of strings
  List<String> longNumbers = matches.map((match) => match.group(0)!).toList();
  
  return longNumbers;
}
