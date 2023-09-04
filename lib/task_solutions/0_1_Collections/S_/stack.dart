import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            height: 80,
            color: const Color(0xFFF8E469),
            child: const Center(
              child: Text(
                'Text',
                style: TextStyle(
                  color: Color(0xFF260509),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildIconButtom(Icons.settings_backup_restore_sharp),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildIconButtom(Icons.close),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: buildIconButtom(Icons.arrow_forward),
          ),
        ],
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xFFFF6137),
        title: const Text(
          'Account',
          style: TextStyle(color: Colors.white, fontSize: 21),
        ),
      ),
      backgroundColor: const Color(0xFFF2F0E9),
      body: ColorfulSafeArea(
        color: const Color(0xFF260509),
        overflowRules: const OverflowRules.all(false),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width: size.width,
                height: 80,
                // height: size.height * 0.2,
                decoration: const BoxDecoration(
                  color: Color(0xFF260509),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                ),
                child: SizedBox(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildIconButton(Icons.home_filled, 'Menu'),
                      buildIconButton(Icons.arrow_circle_down, 'Menu'),
                      buildIconButton(Icons.location_disabled, 'Menu'),
                      buildIconButton(Icons.mail, 'Menu'),
                      buildIconButton(Icons.person, 'Menu'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIconButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          iconSize: 32,
          onPressed: () {},
          icon: Icon(
            icon,
            color: const Color(0xFFF2F0E9),
          ),
        ),
        const SizedBox(height: 0),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFFF2F0E9),
          ),
        ),
      ],
    );
  }

  Widget buildIconButtom(IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.white12,
      child: IconButton(
        icon: Icon(icon),
        color: const Color(0xFF260509),
        onPressed: () {},
      ),
    );
  }
}
