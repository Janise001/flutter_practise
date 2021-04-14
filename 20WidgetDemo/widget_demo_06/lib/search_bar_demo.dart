import 'package:flutter/material.dart';
import 'package:widgetdemo06/search_demo.dart';
import 'asset.dart'; // 数据引入

class SearchBarDemo extends StatefulWidget {
  @override
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
        actions: [
          IconButton(
            onPressed: () {
//              Navigator.of(context).push(
//                  MaterialPageRoute(builder: (BuildContext context) {
//                    return SearchDemo();
//                  }));
            showSearch(context: context, delegate: SearchBarDelegate());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
