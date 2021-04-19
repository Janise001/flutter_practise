import 'package:flutter/material.dart';
import 'dart:async';

class AlertChooseDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AlertChooseDemoState();
}

class _AlertChooseDemoState extends State<AlertChooseDemo> {
  String _choice = 'Nothing';

  Future _alert() async {
    final choice = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('Alert Title'),
            content: Text('Alert Content'),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          );
        });
    if (choice != null) {
      setState(() {
        _choice = choice ? 'true' : 'false';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertChooseDemo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.fiber_manual_record),
              onPressed: _alert,
            ),
            Text(
              '选择了$_choice',
            ),
          ],
        ),
      ),
    );
  }
}
