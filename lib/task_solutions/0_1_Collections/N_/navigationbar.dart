import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({Key? key}) : super(key: key);

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
  int index = 0;
  final pages = [
    const Center(
        child: Text(
      'Page 1',
      style: TextStyle(fontSize: 14),
    )),
    const Center(
        child: Text(
      'Page 2',
      style: TextStyle(fontSize: 14),
    )),
    const Center(
        child: Text(
      'Page 3',
      style: TextStyle(fontSize: 14),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      appBar: AppBar(
        title: const Text('Navigation Bar'),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.blue.shade100,
        height: 60,
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.circle),
            label: 'Page 1',
          ),
          NavigationDestination(
            icon: Icon(Icons.circle),
            label: 'Page 2',
          ),
          NavigationDestination(
            icon: Icon(Icons.circle),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}
