import 'package:flutter/material.dart';
import 'splash_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App闪屏动画制作',
      home: SplashScreen(),
    );
  }
}
