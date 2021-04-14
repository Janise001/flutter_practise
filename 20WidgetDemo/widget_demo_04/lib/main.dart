import 'package:flutter/material.dart';
import 'package:widgetdemo04/frosted_glass_demo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '磨砂玻璃效果制作',
      home: FrostedGlassDemo(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
