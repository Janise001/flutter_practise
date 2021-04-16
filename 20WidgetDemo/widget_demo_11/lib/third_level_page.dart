import 'package:flutter/material.dart';

class ThirdLevelPage extends StatefulWidget {
  final String content;
  ThirdLevelPage(this.content);
  @override
  _ThirdLevelPageState createState() => _ThirdLevelPageState();
}

class _ThirdLevelPageState extends State<ThirdLevelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('从${widget.content}到三级场景'),),
      body: Center(
        child: Text('从${widget.content}到三级场景',textDirection: TextDirection.ltr,),
      ),
    );
  }
}
