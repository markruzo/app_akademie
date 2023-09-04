import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

AppBar buildAppBar(BuildContext context) {
  // final isDarkMode = Theme.of(context).brightness == Brightness.dark;
  const icon = CupertinoIcons.person_circle;

  return AppBar(
    leading: const BackButton(
      color: Color(0xFF260509),
    ),
    title: const Text(
      'User Profile',
      style: TextStyle(
          fontSize: 16,
          color: Color(0xFF260509),
          letterSpacing: -0.1,
          fontWeight: FontWeight.bold),
    ),
    // foregroundColor: const Color(0xFF260509),
    centerTitle: true,
    backgroundColor: const Color(0xFFF2F0E9),
    elevation: 0,
    actions: [
      IconButton(
        iconSize: 26,
        onPressed: () {},
        // Noch nicht definiert: LightMode und DarkMode
        // final theme = isDarkMode ? MyThemes.lightTheme : MyTheme.darkTheme;
        // final switcher = Themewitcher.of(context) !;
        // switcher.changeTheme(theme: theme);
        // Wrap: ThemeSwitcher(builder: (context) => IconButton)
        icon: const Icon(icon),
        color: const Color(0xFF260509),
      ),
    ],
  );
}
