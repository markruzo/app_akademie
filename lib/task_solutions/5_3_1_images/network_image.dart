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
        title: const Text('Network Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Network Image',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
              width: 200, // Breite des Bildes anpassen
              height: 200, // Höhe des Bildes anpassen
            ),
            // const SizedBox(height: 20),
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
