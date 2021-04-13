import 'package:flutter/material.dart';
import 'my_home_material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '不规则底部工具栏的制作',
      home: MyAppHomeMaterial(),
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    );
  }
}

