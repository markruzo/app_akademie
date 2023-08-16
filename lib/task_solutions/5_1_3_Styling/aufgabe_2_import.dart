import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Fonts Import',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Fonts Import'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Google Inter',
              style: GoogleFonts.inter(),
            ),
            Text(
              'Inter Bold',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 200,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Text(
                'Hier ist sehr langer Text drin. Hier ist sehr langer Text drin.',
                style: GoogleFonts.inter(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
