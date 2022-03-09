import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorTheme {
  static const Color kPrimaryColor = Color(0xFF2F5D62);
  static const Color kSecondaryColor = Color(0xFFFAF1E6);
  static const Color kSecondaryLightColor = Color(0xFFA7C4BC);
  static const Color kOpaquePrimaryColor = Color(0xFF446D72);
}

class AppTextTheme {
  static TextStyle kTextHeader1 = GoogleFonts.roboto(
    color: ColorTheme.kSecondaryColor,
    fontSize: 40,
    fontWeight: FontWeight.w600,
  );

  static TextStyle kTextHeader2 = GoogleFonts.roboto(
    color: ColorTheme.kSecondaryColor,
    fontSize: 22,
  );

  static TextStyle kTextContent = GoogleFonts.roboto(
    color: ColorTheme.kSecondaryLightColor,
    fontSize: 22,
  );

  static TextStyle kButtonText = GoogleFonts.roboto(
    color: ColorTheme.kPrimaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
}
