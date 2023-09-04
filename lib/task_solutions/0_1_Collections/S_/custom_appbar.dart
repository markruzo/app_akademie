import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: Text("Content"),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: const Color(0xFFFF6137),
      title: const Text("Account"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(width: 16),
              _buildIconButton(Icons.close),
            ],
          ),
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          topLeft: Radius.circular(0),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.white30,
      child: IconButton(
        icon: Icon(icon),
        color: const Color(0xFF260509),
        onPressed: () {},
      ),
    );
  }
}

class CustomStackedWidget extends StatefulWidget {
  const CustomStackedWidget({super.key});

  @override
  State<CustomStackedWidget> createState() => _CustomStackedWidgetState();
}

class _CustomStackedWidgetState extends State<CustomStackedWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0, // Set the desired bottom padding
      left: 0, // Set the desired left padding
      child: Stack(
        children: [
          Container(
            height: 80,
            width: size.width,
            color: const Color(0xFF260509),
            child: Stack(
              children: [
                SizedBox(
                  width: size.width,
                  height: 80,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(onPressed: null, child: Text('Anmelden'))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
