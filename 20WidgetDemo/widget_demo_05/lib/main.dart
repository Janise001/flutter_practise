import 'package:flutter/material.dart';
import 'package:widgetdemo05/alive_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '保持页面状态',
      home: TabBarDemo(),
    );
  }
}

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarDemo'),
        bottom: TabBar(controller: _controller, tabs: [
          Tab(
            icon: Icon(
              Icons.pages,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.group,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.description,
            ),
          ),
        ]),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          AlivePage(0),
          AlivePage(1),
          AlivePage(2),
        ],
      ),
    );
  }
}
