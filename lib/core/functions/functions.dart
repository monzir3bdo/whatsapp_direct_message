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
    await HiveDatabase.instance.history!.values
        .firstWhere((value) => value.phoneNumber == phoneNumber)
        .delete();
  }

  await HiveDatabase.instance.history!
      .add(ContactModel(phoneNumber: phoneNumber));

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
Future<void> showReviewApp()async{
  int? currentTaps =
      HiveDatabase.instance.tapCount?.get(tapCountKey, defaultValue: 0);
  if ((currentTaps??0) >= 10) {
    final InAppReview inAppReview = InAppReview.instance;

    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }

}
