import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.openSansTextTheme(ThemeData.light().textTheme),
    );
  }
}
