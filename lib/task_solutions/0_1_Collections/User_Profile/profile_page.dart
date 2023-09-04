import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/appbar_widget.dart';
import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/button_widget.dart';
import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/edit_profile_page.dart';
import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/numbers_widget.dart';
import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/profile_widget.dart';
import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/user.dart';
import 'package:app_akademie/task_solutions/0_1_Collections/User_Profile/user_preferences.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return Scaffold(
      backgroundColor: const Color(0xFFF2F0E9),
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const EditProfilePage()),
              );
              setState(() {});
            },
            isEdit: false,
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          const NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: -0.5),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Color(0xFF260509)),
          ),
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Follow Now',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profile',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.4,
                  color: Color(0xFF260509)),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(
                  fontSize: 16, height: 1.4, color: Color(0xFF260509)),
            ),
          ],
        ),
      );
}

// Switcher Loading Effekt auf alles seiten anwenden!
// ThemeSwitchingArea(child: Builder(builder: (context) => Scaffold))
