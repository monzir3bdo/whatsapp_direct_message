import 'package:flutter/material.dart';

const String poppinsFont = 'Poppins';

abstract class AppTextStyles {
  static TextStyle light12 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: poppinsFont,
    color: Colors.black,
  );
  static TextStyle regular12 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: poppinsFont,
    color: Colors.black,
  );
  static TextStyle medium14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: poppinsFont,
    color: Colors.black,
  );
  static TextStyle semiBold16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: poppinsFont,
    color: Colors.black,
  );
  static TextStyle bold16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: poppinsFont,
    color: Colors.black,
  );
}
