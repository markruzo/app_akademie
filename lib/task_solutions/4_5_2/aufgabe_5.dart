// Verändere die Beispiel “Counter App” von Flutter so, dass du auf Knopfdruck deinen eigenen Namen im Widget in der Mitte des Screens angezeigt bekommst.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  String name = '';

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _showMyName() {
    setState(() {
      name = 'Mario';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter & Name App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            const SizedBox(height: 20),
            Text('Name: $name'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Increment Counter'),
            ),
            ElevatedButton(
              onPressed: _showMyName,
              child: const Text('Mein Name'),
            ),
          ],
        ),
      ),
    );
  }
}
