import 'package:hive_flutter/hive_flutter.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';

const String darkKey = 'isDark';
const String saveEnabledKey = 'isSaveEnabled';
const String selectedLanguageKey = 'selectedLanguage';
const String historyKey = 'history';
const String tapCountKey = 'tapCount';

class HiveDatabase {
  factory HiveDatabase() => instance;
  HiveDatabase._();
  static final HiveDatabase instance = HiveDatabase._();
  Box<bool>? isDark;
  Box<bool>? isSaveEnabled;
  Box<String>? selectedLanguage;
  Box<ContactModel>? history;
  Box<int>? tapCount;
  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ContactModelAdapter());
    isDark = await Hive.openBox<bool>(darkKey);
    isSaveEnabled = await Hive.openBox<bool>(saveEnabledKey);
    selectedLanguage = await Hive.openBox<String>(selectedLanguageKey);
    history = await Hive.openBox<ContactModel>(historyKey);
    tapCount = await Hive.openBox<int>(tapCountKey);
  }
}
