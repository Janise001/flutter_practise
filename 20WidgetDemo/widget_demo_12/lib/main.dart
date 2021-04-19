import 'package:flutter/material.dart';
import 'tool_tip_demo.dart';
import 'alert_choose_demo.dart';
import 'simple_alert_demo.dart';
import 'show_modal_bottom_sheet_demo.dart';
import 'show_bottom_sheet_demo.dart';
import 'snack_bar_demo.dart';
import 'toast_demo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '轻量级提示操作ToolTip',
      home: HomeDemo(),
    );
  }
}

class HomeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('提示部件'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('轻量级提示操作'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return ToolTipDemo();
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('AlertChooseDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return AlertChooseDemo();
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('SimpleAlertDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return SimpleAlertDemo();
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('ShowModalBottomSheetDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return ShowModalBottomSheetDemo();
              }));
            },
          ),
          Divider(),ListTile(
            title: Text('ShowBottomSheetDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return ShowBottomSheetDemo();
              }));
            },
          ),
          Divider(),ListTile(
            title: Text('SnackBarDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return SnackBarDemo();
              }));
            },
          ),
          Divider(),ListTile(
            title: Text('ToastDemo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) {
                return ToastDemo();
              }));
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
