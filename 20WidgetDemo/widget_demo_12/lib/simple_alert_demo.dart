import 'package:flutter/material.dart';

class SimpleAlertDemo extends StatefulWidget {
  @override
  _SimpleAlertState createState() => _SimpleAlertState();
}

class _SimpleAlertState extends State<SimpleAlertDemo> {
  String _choice = 'Nothing';

  Future<String> _showSimpleAlert() async {
    final choose = await showDialog(
        context: context,
        builder: (builder) {
          return SimpleDialog(
            title: Text('选择'),
            children: [
              ListTile(
                title: Text('太平洋'),
                onTap: () {
                  Navigator.pop(context, '太平洋');
                },
              ),
              ListTile(
                title: Text('大西洋'),
                onTap: () {
                  Navigator.pop(context, '大西洋');
                },
              ),
              ListTile(
                title: Text('印度洋'),
                onTap: () {
                  Navigator.pop(context, '印度洋');
                },
              ),
              ListTile(
                title: Text('北冰洋'),
                onTap: () {
                  Navigator.pop(context, '北冰洋');
                },
              ),
            ],
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
        title: Text('AlertDemo'),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              icon: Icon(Icons.fiber_manual_record),
              onPressed: _showSimpleAlert,
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
