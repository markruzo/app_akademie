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
      title: 'Image Import',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Assets Image',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/check_icon.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text('Weiter'),
            // ),
          ],
        ),
      ),
    );
  }
}
