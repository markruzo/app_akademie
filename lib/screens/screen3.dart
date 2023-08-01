// screen3.dart
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 3')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigiere zurück zu Screen1, wenn der Button gedrückt wird
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: Text('Zurück Home'),
        ),
      ),
    );
  }
}
