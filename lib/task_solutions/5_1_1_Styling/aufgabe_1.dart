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
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  bool _isSwitched = false;
  Color _boxColor1 = Colors.blue;
  Color _boxColor2 = Colors.green;

  void _toggleSwitch(bool value) {
    setState(() {
      _isSwitched = value;
      if (_isSwitched) {
        _boxColor1 = Colors.orange;
        _boxColor2 = Colors.purple;
      } else {
        _boxColor1 = Colors.blue;
        _boxColor2 = Colors.green;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Switch Color',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: _boxColor1,
            ),
            const SizedBox(height: 20),
            Container(
              width: 100,
              height: 100,
              color: _boxColor2,
            ),
            const SizedBox(height: 20),
            Switch(
              value: _isSwitched,
              onChanged: _toggleSwitch,
            ),
          ],
        ),
      ),
    );
  }
}
