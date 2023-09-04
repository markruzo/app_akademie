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
      title: 'Custom App Bar',
      home: CustomAppBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: const Color(0xFFF2F0E9),
        elevation: 0,
        title: const Text(
          'Main Window',
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Color(0xFF260509),
            fontWeight: FontWeight.normal,
            letterSpacing: 0,
            fontSize: 21,
          ),
        ),
        centerTitle: false,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  minRadius: 18,
                  child: SizedBox(
                    child: Icon(
                      Icons.settings,
                      color: Color(0xFF260509),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  minRadius: 18,
                  child: SizedBox(
                    child: Icon(
                      Icons.close,
                      color: Color(0xFF260509),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
