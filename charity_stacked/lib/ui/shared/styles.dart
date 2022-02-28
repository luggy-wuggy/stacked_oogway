import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorTheme {
  static const Color kPrimaryColor = Color(0xFF15505E);
}

class AppTextTheme {
  static TextStyle kTextHeader = GoogleFonts.playfairDisplay(
    color: Colors.white,
    fontSize: 24,
  );

  static TextStyle kTextContent = GoogleFonts.playfairDisplay(
    color: Colors.white,
    fontSize: 16,
  );
}
