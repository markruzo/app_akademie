import 'package:app_akademie/task_solutions/0_1_Collections/G_/Group_App/second_home.dart';
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
      title: 'The Group App',
      home: const GroupApp(),
      initialRoute: '/groupapp',
      routes: {
        '/second_home': (context) => const SecondHome(),
      },
    );
  }
}

class GroupApp extends StatelessWidget {
  const GroupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text('Group App'),
          centerTitle: true,
          actions: const <Widget>[Icon(Icons.add)],
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/second_home');
            },
            child: Container(
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.green,
              ),
              child: const Center(
                child: Text(
                  'Weiter',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ));
  }
}
