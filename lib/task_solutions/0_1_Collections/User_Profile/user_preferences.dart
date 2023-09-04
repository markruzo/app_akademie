import 'dart:convert';

import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static late SharedPreferences _preferences;

  static const _keyUser = 'user';
  static const myUser = User(
    imagePath:
        'https://scontent-fra5-1.cdninstagram.com/v/t51.2885-19/354201460_285564917262802_4262627857105277753_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-fra5-1.cdninstagram.com&_nc_cat=110&_nc_ohc=KeIcALMwqsYAX-pYFAY&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCtiCjn9FFOoj3qOrOnzl7egk0lQFcHV8AS6wvW5-cfsw&oe=64F17D85&_nc_sid=8b3546',
    name: 'Mario Krutzikowsky',
    email: 'Trainee at Appakademie',
    about:
        'Currently, Im studying at the App Academy, immersing myself in the realm of app development. With a keen focus on Dart/Flutter, Im dedicated to crafting and building unique, impressive apps. Lets push the boundaries of possibility in the world of apps together!',
    isDarkMode: false,
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJason());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
