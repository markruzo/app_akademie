import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Navigation',
      home: CustomNavigation(),
    );
  }
}

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _selectedItemIndex = 4;

  final List<IconData> _icons = [
    Icons.circle_outlined,
    Icons.circle_outlined,
    Icons.circle_outlined,
    Icons.circle_outlined,
    Icons.circle_outlined,
  ];

  final List<String> _labels = [
    'Home',
    'Tiere',
    'Termine',
    'Wissen',
    'Karte',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
              child: const Icon(
                Icons.circle_outlined,
                color: Colors.black,
                size: 28,
              ))
        ],
        leading: const Icon(
          Icons.circle_outlined,
          color: Colors.black,
          size: 28,
        ),
        title: const Text(
          'Doggle',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text('Selected $_selectedItemIndex'),
      ),
      bottomNavigationBar: Row(
        children: List.generate(
          _icons.length,
          (index) =>
              buildNavBarItem(context, _icons[index], _labels[index], index),
        ),
      ),
    );
  }

  Widget buildNavBarItem(
      BuildContext context, IconData icon, String label, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedItemIndex = index;
          });
        },
        child: Container(
          height: 80,
          decoration: index == _selectedItemIndex
              ? BoxDecoration(
                  border: const Border(
                      bottom: BorderSide(width: 8, color: Colors.white)),
                  color:
                      index == _selectedItemIndex ? Colors.white : Colors.white)
              : const BoxDecoration(),
          child: Column(
            children: [
              Icon(icon,
                  color:
                      index == _selectedItemIndex ? Colors.black : Colors.black,
                  size: 28),
              Text(
                label,
                style: TextStyle(
                    color: index == _selectedItemIndex
                        ? Colors.black
                        : Colors.black,
                    fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
