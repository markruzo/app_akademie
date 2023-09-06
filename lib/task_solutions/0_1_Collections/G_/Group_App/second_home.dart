import 'package:flutter/material.dart';

class SecondHome extends StatefulWidget {
  const SecondHome({super.key});

  @override
  State<SecondHome> createState() => _SecondHomeState();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}

class _SecondHomeState extends State<SecondHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(
            children: [
              const Center(
                child: Text(
                  'Gallerie',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'lib/task_solutions/0_1_Collections/G_/Group_App/assets/grueeneblaetter.jpg',
                // fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Schöne Bilder',
                  style: TextStyle(
                      fontSize: 40,
                      fontStyle: FontStyle.italic,
                      color: Colors.green),
                ),
              ),
              Image.network(
                'https://images.pexels.com/photos/14339802/pexels-photo-14339802.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
