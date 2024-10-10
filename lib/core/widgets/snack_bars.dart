import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class SnackBars {
  static void showSuccessSnackBar(BuildContext context, String message) {
    Fluttertoast.showToast(
        msg: message, backgroundColor: Colors.green, textColor: Colors.white);
  }

  static void showErrorSnackBar(BuildContext context, String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }
}
