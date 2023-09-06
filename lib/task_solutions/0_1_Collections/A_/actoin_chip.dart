import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  runApp(const MyApp());
  debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text'),
        ),
        body: const Center(
          child: ActionChipExample(),
        ),
      ),
    );
  }
}

class ActionChipExample extends StatelessWidget {
  const ActionChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      backgroundColor: Colors.red,
      label: const Text('Tap Me'),
      onPressed: () {},
    );
  }
}

class ColoredBar extends StatelessWidget {
  final double height;

  const ColoredBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green, // Farbe des Balkens
      height: 300, // Höhe des Balkens (65 Pixel)
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colored Bar Example'),
      ),
      body: Stack(
        children: [
          const Center(
            child: ActionChipExample(),
          ),
          Positioned(
            bottom: 20, // Platzierung am unteren Rand
            left: 20,
            right: 0,
            child: Container(
              color: Colors.green, // Hintergrundfarbe des Balkens
              height: 65, // Höhe des Balkens (65 Pixel)
              child: const ColoredBar(
                height: 65,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
