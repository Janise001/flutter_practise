import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  _alert() {
    _key.currentState.showSnackBar(SnackBar(
      content: Text('register'.toUpperCase()),
      duration: Duration(milliseconds: 1000),
      action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            print('Ok 点击');
          }),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('SnackBarDemo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.fiber_manual_record),
              onPressed: _alert,
            ),
          ],
        ),
      ),
    );
  }
}
