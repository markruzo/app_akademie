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
      // extendBodyBehindAppBar: false,
      backgroundColor: const Color(0xFFF2F0E9),
      appBar: AppBar(
        title: const Text('Custom App Bar'),
        backgroundColor: const Color(0xFFFF6137),
        // backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Container(
            height: 100,
            color: const Color(0xFFFFFFFF),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add,
                  color: Color(0xFF260509),
                ),
              ),
            ),
          ),
        ],
        // leading: const Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: CircleAvatar(
        //     backgroundColor: Color.fromRGBO(255, 255, 255, 0.3),
        //     child: IconButton(
        //       icon: Icon(
        //         Icons.arrow_back,
        //         color: Color(0xFF260509),
        //       ),
        //       onPressed: null,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
