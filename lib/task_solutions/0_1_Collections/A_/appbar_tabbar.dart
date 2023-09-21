import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTabbedPage(),
    );
  }
}

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({super.key});

  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabbed App'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Tab 1',
              icon: Icon(Icons.add_home_rounded),
            ),
            Tab(
              text: 'Tab 1',
              icon: Icon(Icons.settings_backup_restore),
            ),
            Tab(
              text: 'Tab 1',
              icon: Icon(Icons.arrow_circle_up),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Inhalt von Tab 1')),
          Center(child: Text('Inhalt von Tab 2')),
          Center(child: Text('Inhalt von Tab 3')),
        ],
      ),
    );
  }
}
