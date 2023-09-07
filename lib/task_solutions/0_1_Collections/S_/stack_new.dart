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
      title: 'Stack Widget',
      home: StackNew(),
    );
  }
}

class StackNew extends StatelessWidget {
  const StackNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text(
                    'Box 1',
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
                child: const Center(child: Text('Box 2')),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                child: const Center(child: Text('Box 3')),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.orangeAccent,
                child: const Center(child: Text('Box 4')),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.purpleAccent,
                child: const Center(child: Text('Box 5')),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
                child: const Center(child: Text('Box 6')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
