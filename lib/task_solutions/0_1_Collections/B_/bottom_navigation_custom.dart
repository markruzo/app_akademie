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
      title: 'Custom Navigation',
      home: CustomNavigation(),
    );
  }
}

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _selectedItemIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: <Widget>[
          buildNavBarItem(context, Icons.circle, 0),
          buildNavBarItem(context, Icons.circle, 1),
          buildNavBarItem(context, Icons.circle, 2),
          buildNavBarItem(context, Icons.circle, 3),
          buildNavBarItem(context, Icons.circle, 4),
        ],
      ),
      appBar: AppBar(
        title: const Text('Custom Navigation'),
      ),
      body: Center(
        child: Text('Selected $_selectedItemIndex'),
      ),
    );
  }

  Widget buildNavBarItem(BuildContext context, IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: const Border(
                    bottom: BorderSide(width: 8, color: Colors.blue)),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.withOpacity(0.3),
                    Colors.blue.withOpacity(0.015),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                color: index == _selectedItemIndex ? Colors.blue : Colors.white)
            : const BoxDecoration(),
        child: Icon(icon,
            color: index == _selectedItemIndex
                ? Colors.black
                : Colors.grey.shade300,
            size: 32),
      ),
    );
  }
}
