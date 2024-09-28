import 'package:hive_flutter/hive_flutter.dart';

const String darkKey = 'isDark';
const String saveEnabledKey = 'isSaveEnabled';
const String selectedLanguageKey = 'selectedLanguage';

class HiveDatabase {
  factory HiveDatabase() => instance;
  HiveDatabase._();
  static final HiveDatabase instance = HiveDatabase._();
  Box<bool>? isDark;
  Box<bool>? isSaveEnabled;
  Box<String>? selectedLanguage;
  // phone number Model box
  Future<void> init() async {
    await Hive.initFlutter();
    isDark = await Hive.openBox<bool>(darkKey);
    isSaveEnabled = await Hive.openBox<bool>(saveEnabledKey);
    selectedLanguage = await Hive.openBox<String>(selectedLanguageKey);
  }
}
