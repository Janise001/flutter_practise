import 'package:flutter/material.dart';
import 'dart:async';

class SimpleDialogDemo extends StatefulWidget {
  final String title;

  SimpleDialogDemo(this.title);

  @override
  _SimpleDialogState createState() => _SimpleDialogState();
}

class _SimpleDialogState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';

  Future<String> _simpleDialog() async {
    final choice = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('SimpleDialog Title'),
          children: [
            ListTile(
              title: Text('简单'),
              onTap: () {
                Navigator.pop(context, '简单');
              },
            ),
            ListTile(
              title: Text('一般'),
              onTap: () {
                Navigator.pop(context, '一般');
              },
            ),
            ListTile(
              title: Text('普通'),
              onTap: () {
                Navigator.pop(context, '普通');
              },
            ),
            ListTile(
              title: Text('困难'),
              onTap: () {
                Navigator.pop(context, '困难');
              },
            ),
          ],
        );
      },
    );
    if (choice != null) {
      setState(() {
        _choice = choice;
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
        children: [
          IconButton(
            onPressed: _simpleDialog,
            icon: Icon(Icons.radio_button_checked),
          ),
          Text('Your choice is $_choice'),
        ],
      ),
    );
  }
}
