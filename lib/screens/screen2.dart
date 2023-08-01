// screen2.dart
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigiere zurück zu Screen1, wenn der Button gedrückt wird
            Navigator.pushNamed(context, '/screen3');
          },
          child: Text('Gehe zu Screen 3'),
        ),
      ),
    );
  }
}
