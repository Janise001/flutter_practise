import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ToastDemo extends StatefulWidget {
  @override
  _ToastDemoState createState() => _ToastDemoState();
}

class _ToastDemoState extends State<ToastDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.fiber_manual_record),
              onPressed: (){
                Toast.show('Toast提示', context,duration: 1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
