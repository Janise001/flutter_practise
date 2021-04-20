import 'package:flutter/material.dart';
import 'dart:async';

class ShowModalBottomSheetDemo extends StatefulWidget {
  final String title;

  ShowModalBottomSheetDemo(this.title);

  @override
  _ShowModalBottomSheetDemoState createState() =>
      _ShowModalBottomSheetDemoState();
}

class _ShowModalBottomSheetDemoState extends State<ShowModalBottomSheetDemo> {
  String _choice = 'Nothing';

  _showModalBottomSheet() async {
    final choice = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            children: [
              ListTile(
                title: Text('选项A'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('选项B'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('选项C'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          ),
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: _showModalBottomSheet,
            icon: Icon(Icons.radio_button_checked),
          ),
          Text('Your choice is $_choice'),
        ],
      ),
    );
  }
}
