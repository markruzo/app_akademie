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
    Icons.circle,
    Icons.circle,
    Icons.circle,
    Icons.circle,
    Icons.circle,
  ];

  final List<String> _labels = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: List.generate(
          _icons.length,
          (index) =>
              buildNavBarItem(context, _icons[index], _labels[index], index),
        ),
      ),
      appBar: AppBar(
        title: const Text('Custom Navigation'),
      ),
      body: Center(
        child: Text('Selected $_selectedItemIndex'),
      ),
    );
  }

  Widget buildNavBarItem(
      BuildContext context, IconData icon, String label, int index) {
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
        child: Column(
          children: [
            Icon(
              icon,
              color: index == _selectedItemIndex
                  ? Colors.black
                  : Colors.grey.shade300,
              size: 32,
            ),
            Text(
              label,
              style: TextStyle(
                color: index == _selectedItemIndex
                    ? Colors.black
                    : Colors.grey.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
