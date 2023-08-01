// Verändere die Beispiel “Counter App” von Flutter so, dass du auf Knopfdruck deinen eigenen Namen im Widget in der Mitte des Screens angezeigt bekommst.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
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
      appBar: AppBar(title: Text('Counter & Name App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            SizedBox(height: 20),
            Text('Name: $name'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment Counter'),
            ),
            ElevatedButton(
              onPressed: _showMyName,
              child: Text('Mein Name'),
            ),
          ],
        ),
      ),
    );
  }
}
