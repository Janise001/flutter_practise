import 'package:flutter/material.dart';
import 'draggable_demo.dart';
import 'draggable_menu_demo.dart';

class Demo13 extends StatefulWidget {
  final String title;

  Demo13(this.title);

  @override
  _Demo13State createState() => _Demo13State();
}

class _Demo13State extends State<Demo13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('颜色赋值'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DraggableDemo('颜色赋值');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('菜单抓取'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DraggableMenuDemo('菜单抓取');
              }));
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
