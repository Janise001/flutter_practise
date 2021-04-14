import 'package:flutter/material.dart';
import 'search_bar_demo.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不简单的搜索框',
      home: SearchBarDemo(),
    );
  }
}

