import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/profile_page.dart';
import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/themes.dart';
import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/user_preferences.dart';

import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await UserPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themes: [MyThemes.lightTheme, MyThemes.darkTheme],
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.themeOf(context).data,
          title: title,
          home: const ProfilePage(),
        ),
      ),
    );
  }
}
