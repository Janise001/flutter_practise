import 'package:flutter/material.dart';

class NormalPage extends StatefulWidget {
  final String content;

  NormalPage(this.content);

  @override
  State<StatefulWidget> createState() => NormalPageState();
}

class NormalPageState extends State<NormalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.content),
//        leading: IconButton(
//          icon: Icon(Icons.close),
//          onPressed: () {
//            Navigator.of(context).pop();
//          },
//        ),
      ),
      body: Center(
        child: Text(widget.content),
      ),
    );
  }
}
