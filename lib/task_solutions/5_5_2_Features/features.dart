import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _displayText = '';
  String _errorText = '';
  bool _isLoading = false;
  int _timeoutInSeconds = 5;
  int _delayInSeconds = 2;

  void _generateRandomNumber() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(Duration(seconds: _delayInSeconds), () {
      setState(() {
        _displayText = 'Number $_delayInSeconds';
        _isLoading = false;
      });
    });
    if (Random().nextInt(3) == 0) {
      throw Exception('Fehler');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Future Delayed'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isLoading ? const CircularProgressIndicator() : Text(_displayText),
            Text(
              _errorText,
              style: const TextStyle(color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                _displayText = '';
                _errorText = '';
                _generateRandomNumber();
              },
              child: const Text('Generiere Zahl'),
            ),
            Slider(
              value: _timeoutInSeconds.toDouble(),
              min: 5,
              max: 10,
              onChanged: (value) {
                setState(() {
                  _timeoutInSeconds = value.toInt();
                });
              },
              label: 'Timeout($_timeoutInSeconds Sekunden)',
            ),
            Slider(
                value: _delayInSeconds.toDouble(),
                min: 1,
                max: 5,
                onChanged: (value) {
                  setState(() {
                    _delayInSeconds = value.toInt();
                  });
                },
                label: 'Verzögerung ($_delayInSeconds Sekunden)'),
          ],
        ));
  }
}
