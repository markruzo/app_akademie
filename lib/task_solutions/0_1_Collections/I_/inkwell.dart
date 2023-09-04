import 'package:flutter/material.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  set text(String text) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Material(
            child: InkWell(
              highlightColor: Colors.orange.withOpacity(0.3),
              splashColor: Colors.red.withOpacity(0.5),
              onTap: () => setState(() => text = 'Single Tap!'),
              onDoubleTap: () => setState(() => text = 'DoubleT Tap!!'),
              // onLongPress: () => setState(() => text = 'Long Press!'),
              child: Ink(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text('None'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
