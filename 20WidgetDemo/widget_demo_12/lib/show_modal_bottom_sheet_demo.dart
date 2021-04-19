
import 'package:flutter/material.dart';
import 'dart:async';

class ShowModalBottomSheetDemo extends StatefulWidget {
  @override
  _ShowModalBottomSheetDemoState createState() =>
      _ShowModalBottomSheetDemoState();
}

class _ShowModalBottomSheetDemoState extends State<ShowModalBottomSheetDemo> {
  String _choice = 'Nothing';

  Future<String> _alert() async {
    final choose = await showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 300.0,
            child: Column(
              children: [
                Text('选择'),
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
                  title: Text('较难'),
                  onTap: () {
                    Navigator.pop(context, '较难');
                  },
                ),
              ],
            ),
          );
        });
    if (choose != null) {
      setState(() {
        _choice = choose;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShowModalBottomSheet'),
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
