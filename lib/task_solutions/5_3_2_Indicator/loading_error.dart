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
      title: 'Image Loading with Progress and Error State',
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
  bool _hasError = false;
  final double _progress = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error State'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isLoading
                ? LinearProgressIndicator(value: _progress) // bei null = const
                : Container(),
            const SizedBox(height: 20),
            _isLoading
                ? CircularProgressIndicator(
                    value: _progress) // bei null = const
                : Container(),
            const SizedBox(height: 20),
            _isLoading
                ? const Text('Loading...')
                : _hasError
                    ? Column(
                        children: [
                          Image.asset('assets/images/error_image.png'),
                          const SizedBox(height: 10),
                          const Text('Error loading image.'),
                        ],
                      )
                    : Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/d/da/The_City_London.jpg'), // Replace with your image URL
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isLoading = false;
                  _hasError = false;
                });
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                minimumSize: const Size(150, 44),
              ),
              child: const Text('Load Image'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isLoading = false;
                  _hasError = true;
                });
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                minimumSize: const Size(150, 44),
              ),
              child: const Text('Simulate Error'),
            ),
          ],
        ),
      ),
    );
  }
}
