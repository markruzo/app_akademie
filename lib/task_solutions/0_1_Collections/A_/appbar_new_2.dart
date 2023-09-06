import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: NewAppBar(),
    );
  }
}

class NewAppBar extends StatelessWidget {
  const NewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 44,
            width: 44,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Icon(
              Icons.arrow_back,
              size: 22,
            ),
          ),
        ),
        elevation: 0,
        toolbarHeight: 56,
        centerTitle: false,
        title: const Text(
          'Doogle',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 44,
              width: 44,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(
                Icons.close,
                size: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 44,
              width: 44,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(
                Icons.close,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Align(alignment: Alignment(-0.6, 0),