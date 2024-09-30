class CustomRegex {
  static List<String> extractPhoneNumberFromString(String input) {
    RegExp regExp = RegExp(
        r'(\+|00)?[\s-]?\(?\d{1,4}\)?[\s-]?\d{1,4}[\s-]?\d{1,4}[\s-]?\d{1,4}');

// Find all matches and convert them to a list
    List<String> phoneNumbers =
        regExp.allMatches(input).map((m) => m.group(0)!).toList();
    return phoneNumbers;
  }
}
