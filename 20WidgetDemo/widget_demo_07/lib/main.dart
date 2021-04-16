import 'package:flutter/material.dart';
import 'wrap_demo.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap流式布局',
      home: WrapDemo(),
      theme: ThemeData.light(),
    );
  }
}
