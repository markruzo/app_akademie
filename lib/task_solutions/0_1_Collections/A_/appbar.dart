import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        //controller for TabBar
        length: 2, //lenght of tabs in TabBar
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Tab Bar"), //title of app
          backgroundColor: Colors.blue, //background color of app bar
          elevation: 5.0, //elevation value of appbar
          bottom: TabBar(
            //tabbar at bottom of appbar
            onTap: (index) {
              print("selected tab is $index");
            },
            tabs: const [
              Tab(icon: Icon(Icons.home_filled)),
              Tab(icon: Icon(Icons.mail_rounded))
              //more tabs here
            ],
          ),
          actions: [
            //actions widget in appbar
            IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  //code to execute when this button is pressed
                }),

            IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {
                  //code to execute when this button is pressed
                }),
            //more widgets to place here
          ],
        ),
        drawer:
            const Drawer(), //drawer on scaffold, it will create menu icon on appbar

        body: const Center(
            //content body on scaffold
            child: Text("AppBar with TabBar")));
  }
}
