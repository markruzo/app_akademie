import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meine App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MeineApp(),
    );
  }
}

class MeineApp extends StatelessWidget {
  const MeineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meine App'),
      ),
      body: IconButton(
        icon: Image.network(
            'https://images.pexels.com/photos/13555353/pexels-photo-13555353.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
        iconSize: 50,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AboutScreen(),
            ),
          );
        },
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      body: Image.network(
          'https://images.pexels.com/photos/13555353/pexels-photo-13555353.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
    );
  }
}
