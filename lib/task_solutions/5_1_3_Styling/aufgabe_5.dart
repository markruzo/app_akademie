import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Switch',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const ThemeSwitch(),
    );
  }
}

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  _ThemeSwitchState createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  bool _isDarkMode = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switch'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: _isDarkMode,
                onChanged: _toggleDarkMode,
                activeColor: Colors.white,
              ),
              const SizedBox(height: 10),
              Text(
                _isDarkMode ? 'Dunkles Theme' : 'Helles Theme',
                style:
                    TextStyle(color: _isDarkMode ? Colors.white : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
