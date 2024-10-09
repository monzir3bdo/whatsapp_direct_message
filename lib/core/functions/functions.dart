import 'package:flutter/services.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';

List<String> extractLongNumbers(String text) {
  // Remove all spaces from the text
  text = text.replaceAll(' ', '');

  // Regular expression to find sequences of digits that are 7 or more in length
  final RegExp regex = RegExp(r'\b\d{7,}\b');

  // Find all matches in the text
  final matches = regex.allMatches(text);

  // Convert matches to a list of strings
  List<String> longNumbers = matches.map((match) => match.group(0)!).toList();

  return longNumbers;
}

Future<void> copy({required String data}) async {
  await Clipboard.setData(ClipboardData(text: data));
}

Future<void> openWhatsapp(String phoneNumber, String message) async {
  String? savedName;
  if (phoneNumber.startsWith('00')) {
    String newNumber = phoneNumber.replaceFirst('00', '+');
    launchUrl(Uri(
      scheme: 'https',
      host: 'wa.me',
      path: newNumber,
      queryParameters: message.isNotEmpty ? {'text': message} : null,
    ));
    await HiveDatabase.instance.history!
        .add(ContactModel(phoneNumber: newNumber));
    return;
  }
  final url = Uri(
    scheme: 'https',
    host: 'wa.me',
    path: phoneNumber,
    queryParameters: message.isNotEmpty ? {'text': message} : null,
  );
  if (HiveDatabase.instance.history!.values
      .any((value) => value.phoneNumber == phoneNumber)) {
    final oldNumber = HiveDatabase.instance.history!.values
        .firstWhere((value) => value.phoneNumber == phoneNumber);
    savedName = oldNumber.name;
    await oldNumber.delete();
  }

  await HiveDatabase.instance.history!
      .add(ContactModel(phoneNumber: phoneNumber, name: savedName));

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void incrementTapCount() {
  int? currentTaps =
      HiveDatabase.instance.tapCount?.get(tapCountKey, defaultValue: 0);
  HiveDatabase.instance.tapCount?.put(tapCountKey, (currentTaps ?? 0) + 1);
}

Future<void> showReviewApp() async {
  int? currentTaps =
      HiveDatabase.instance.tapCount?.get(tapCountKey, defaultValue: 0);
  if ((currentTaps ?? 0) >= 10 &&
      !(HiveDatabase.instance.isRateUsShown
              ?.get(isRateUsShownKey, defaultValue: false) ??
          false)) {
    final InAppReview inAppReview = InAppReview.instance;
    HiveDatabase.instance.isRateUsShown?.put(isRateUsShownKey, true);

    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }
}
