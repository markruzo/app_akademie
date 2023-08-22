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
      title: 'Column Widget List',
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
        title: const Text('Button / Icons'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Center(
                  child: Icon(
                    Icons.access_time_sharp,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Icon(
                    Icons.access_time_sharp,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Icon(
                    Icons.access_time_sharp,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MeineApp2 extends StatelessWidget {
  const MeineApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.add,
        ),
        label: const Text('Click'),
      ),
    ));
  }
}
