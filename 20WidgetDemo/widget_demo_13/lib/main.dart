import 'package:flutter/material.dart';
import 'draggable_demo.dart';
import 'widget_demo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Draggable拖拽控件',
//      home: DraggableDemo(),
      home: WidgetDemo(),
    );
  }
}



