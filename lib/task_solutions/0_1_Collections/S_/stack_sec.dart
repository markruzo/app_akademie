import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack Second',
      home: StackSecond(),
    );
  }
}

class StackSecond extends StatelessWidget {
  const StackSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F0E9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFF6137),
        title: const Text('Stack Second'),
      ),
      body: ListView(
        children: [
          buildProfile(),
        ],
      ),
    );
  }

  Widget buildProfile() {
    const urlProfile =
        'https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&w=800';

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: const Color(0xFFBCB86E),
          height: 120,
        ),
        Positioned(
          bottom: -50,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(color: Color(0xFFF2F0E9), spreadRadius: 4),
                ],
                image: const DecorationImage(
                  image: NetworkImage(urlProfile),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
