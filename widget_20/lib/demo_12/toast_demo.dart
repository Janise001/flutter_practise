import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ToastDemo extends StatefulWidget {
  final String title;
  ToastDemo(this.title);
  @override
  _ToastDemoState createState() => _ToastDemoState();
}

class _ToastDemoState extends State<ToastDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){
              Toast.show('Toast...', context,duration: 2);
            },
            icon: Icon(Icons.radio_button_checked),
          ),
        ],
      ),
    );
  }
}
