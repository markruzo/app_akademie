import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Named routes
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
      },
      // HomeScreen StartingPoint
      initialRoute: '/',
    );
  }
}
