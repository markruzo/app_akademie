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
      home: MyAwesomeWidget(),
    );
  }
}

class MyAwesomeWidget extends StatelessWidget {
  const MyAwesomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(builder: (context) {
          return InkWell(
            onTap: () => Scaffold.of(context).showBottomSheet(
              (context) => const SnackBarContent(),
            ),
            child: Text(
              'Tap me for a message',
              style: Theme.of(context).textTheme.headline4,
            ),
          );
        }),
      ),
    );
  }
}

/// Our amazing on screen content
class SnackBarContent extends StatelessWidget {
  const SnackBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amber,
      child: const Center(
        child: Text("Do you see me?"),
      ),
    );
  }
}
