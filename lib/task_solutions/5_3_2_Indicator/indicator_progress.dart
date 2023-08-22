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
      title: 'Image Loading with Progress',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isLoading = true;
  final double _progress = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading with Progress'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isLoading
                ? LinearProgressIndicator(value: _progress)
                : Container(), // Show progress if loading, else hide
            const SizedBox(height: 20),
            _isLoading
                ? CircularProgressIndicator(value: _progress)
                : Container(), // Show progress if loading, else hide
            const SizedBox(height: 20),
            _isLoading
                ? const Text('Loading...')
                : Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/d/da/The_City_London.jpg',
                    height: 200,
                    width: 200,
                  ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isLoading = false;
                });
              },
              child: const Text('Load Image'),
            ),
          ],
        ),
      ),
    );
  }
}
