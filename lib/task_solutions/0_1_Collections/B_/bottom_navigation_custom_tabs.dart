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
      title: 'Custom Navigation',
      home: CustomNavigation(),
    );
  }
}

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation>
    with SingleTickerProviderStateMixin {
  int _selectedItemIndex = 4;
  late TabController _tabController; // TabController hinzugefügt

  final List<IconData> _icons = [
    Icons.add_home_outlined,
    Icons.donut_large_outlined,
    Icons.access_time,
    Icons.wb_sunny_outlined,
    Icons.add_location_outlined,
  ];

  final List<String> _labels = [
    'Home',
    'Tiere',
    'Termine',
    'Wissen',
    'Karte',
  ];

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Container(
              padding: const EdgeInsets.all(16),
              child: const Icon(
                Icons.admin_panel_settings_outlined,
                color: Colors.black,
                size: 28,
              ))
        ],
        leading: const Icon(
          Icons.tune,
          color: Colors.black,
          size: 28,
        ),
        title: const Text(
          'Doggle',
          style: TextStyle(color: Colors.black),
        ),
        bottom: TabBar(
          // TabBar hinzugefügt
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(_icons[0]), text: _labels[0]),
            Tab(icon: Icon(_icons[1]), text: _labels[1]),
            Tab(icon: Icon(_icons[2]), text: _labels[2]),
          ],
        ),
      ),
      body: Center(
        child: TabBarView(
          // TabBarView hinzugefügt
          controller: _tabController,
          children: const [
            Text('Selected 0'),
            Text('Selected 1'),
            Text('Selected 2'),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: List.generate(
          _icons.length,
          (index) =>
              buildNavBarItem(context, _icons[index], _labels[index], index),
        ),
      ),
    );
  }

  Widget buildNavBarItem(
      BuildContext context, IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: const Border(
                    bottom: BorderSide(width: 8, color: Colors.white)),
                color:
                    index == _selectedItemIndex ? Colors.white : Colors.white)
            : const BoxDecoration(),
        child: Column(
          children: [
            Icon(icon,
                color:
                    index == _selectedItemIndex ? Colors.black : Colors.black,
                size: 28),
            Text(
              label,
              style: TextStyle(
                  color:
                      index == _selectedItemIndex ? Colors.black : Colors.black,
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
