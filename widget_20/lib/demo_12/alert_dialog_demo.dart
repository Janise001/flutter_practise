import 'package:flutter/material.dart';
import 'dart:async';

class AlertDialogDemo extends StatefulWidget {
  final String title;

  AlertDialogDemo(this.title);

  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  _alertDialog() async {
    final choice = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('AlertDialog title'),
          content: Text('AlertDialog Content'),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(
                'OK',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            FlatButton(
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
      },
    );
    if (choice != null) {
      setState(() {
        _choice = choice ? 'OK' : 'CANCEL';
      });
    }
  }

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
            onPressed: _alertDialog,
            icon: Icon(Icons.radio_button_checked),
          ),
          Text('Your choice is $_choice'),
        ],
      ),
    );
  }
}
