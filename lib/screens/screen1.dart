// screen1.dart
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigiere zu Screen2, wenn der Button gedrückt wird
            Navigator.pushNamed(context, '/screen2');
          },
          child: Text('Gehe zu Screen 2'),
        ),
      ),
    );
  }
}
