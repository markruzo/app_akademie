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
      title: 'Custom App Bar',
      home: NetImage(),
    );
  }
}

class NetImage extends StatelessWidget {
  const NetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F0E9),
      appBar: AppBar(
        elevation: 0,
        title: const Text('Network Image'),
        backgroundColor: const Color(0xFFFF6137),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: Image.network(
            'https://images.pexels.com/photos/17815428/pexels-photo-17815428/free-photo-of-natur-sommer-wiese-stehen.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            width: 300,
            height: 500,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
