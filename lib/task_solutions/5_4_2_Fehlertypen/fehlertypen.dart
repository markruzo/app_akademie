import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CustomException implements Exception {
  final String message;

  CustomException(this.message);

  @override
  String toString() {
    return 'CustomException: $message';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/error': (context) => ErrorScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            try {
              throwRandomException();
            } catch (e) {
              Navigator.pushNamed(context, '/error', arguments: e);
            }
          },
          child: Text('Throw Random Exception'),
        ),
      ),
    );
  }

  void throwRandomException() {
    final random = Random().nextInt(3);
    if (random == 0) {
      throw CustomException('Dies ist eine benutzerdefinierte Exception.');
    } else if (random == 1) {
      throw FormatException('Dies ist eine FormatException.');
    } else {
      throw Exception('Dies ist eine allgemeine Exception.');
    }
  }
}

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dynamic error = ModalRoute.of(context)!.settings.arguments;
    String errorMessage = 'Unbekannter Fehler';

    if (error is CustomException) {
      errorMessage = 'Benutzerdefinierte Exception: ${error.message}';
    } else if (error is FormatException) {
      errorMessage = 'FormatException: ${error.message}';
    } else if (error is Exception) {
      errorMessage = 'Allgemeine Exception: ${error.toString()}';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Error Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ein Fehler ist aufgetreten:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              errorMessage,
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Zurück zum Start'),
            ),
          ],
        ),
      ),
    );
  }
}
