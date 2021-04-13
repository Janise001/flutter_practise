import 'package:flutter/material.dart';
import 'pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路由跳动的动画效果',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstPage(),
    );
  }
}