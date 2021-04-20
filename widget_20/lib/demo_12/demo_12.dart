import 'package:flutter/material.dart';
import 'simple_dialog_demo.dart';
import 'alert_dialog_demo.dart';
import 'show_modal_bottom_sheet_demo.dart';
import 'show_bottom_sheet_demo.dart';
import 'show_snack_bar_demo.dart';
import 'toast_demo.dart';

class Demo12 extends StatefulWidget {
  final String content;

  Demo12(this.content);

  @override
  _Demo12State createState() => _Demo12State();
}

class _Demo12State extends State<Demo12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.content),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('SimpleDialog'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SimpleDialogDemo('SimpleDialog');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('AlertDialog'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AlertDialogDemo('AlertDialog');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('ShowModalBottomSheetDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ShowModalBottomSheetDemo('ShowModalBottomSheetDemo');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('ShowBottomSheetDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ShowBottomSheetDemo('ShowBottomSheetDemo');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('ShowSnackBarDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ShowSnackBarDemo('ShowSnackBarDemo');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('ToastDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ToastDemo('ToastDemo');
              }));
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
