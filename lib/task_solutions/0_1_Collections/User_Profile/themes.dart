import 'package:theme_provider/theme_provider.dart';
import 'package:flutter/material.dart';

class MyThemes {
  static const primary = Colors.blue;
  static final primaryColor = Colors.blue.shade300;

  static final darkTheme = AppTheme(
    id: 'dark_theme',
    description: 'Dark Theme',
    data: ThemeData.dark(),
  );

  static final lightTheme = AppTheme(
    id: 'light_theme',
    description: 'Light Theme',
    data: ThemeData.light(),
  );
}

// final darkTheme = ThemeData(
//   scaffoldBackgroundColor: Colors.grey.shade900,
//   primaryColorDark: primaryColor,
//   colorScheme: ColorSheme.dark(primary: primary),
//   dividerColor: Colors.white,
// );
