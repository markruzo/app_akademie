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
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              actions: const [
                CircleAvatar(
                  child: Icon(
                    Icons.add,
                  ),
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.add,
                  ),
                ),
              ],
              leading: const Icon(Icons.arrow_back_ios),
              title: const Text('Tab Bar'),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.circle),
                  ),
                  Tab(
                    icon: Icon(Icons.circle),
                  ),
                  Tab(
                    icon: Icon(Icons.circle),
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Icon(Icons.circle),
                Icon(Icons.circle),
                Icon(Icons.circle),
              ],
            ),
          ),
        ));
  }
}
