import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(const TabBarApp());
}

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 24,
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.notifications,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
          toolbarHeight: 56,
          leading: const Icon(
            Icons.settings,
            size: 24,
          ),
          title: const Text(
            'Tab Bar',
          ),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: [
              Tab(
                text: 'Wissen',
                icon: Icon(Icons.circle),
              ),
              Tab(
                text: 'Videos',
                icon: Icon(Icons.circle),
              ),
              Tab(
                text: 'Tipps',
                icon: Icon(Icons.circle),
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: <Widget>[
              NestedTabBar('Wissen'),
              NestedTabBar('Videos'),
              NestedTabBar('Tipps'),
            ],
          ),
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

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
    return Column(
      children: [
        TabBar.secondary(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Overview'),
            Tab(text: 'Specifications'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: Overview tab')),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text('${widget.outerTab}: Specifications tab')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
