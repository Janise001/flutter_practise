import 'package:flutter/material.dart';

class Demo07 extends StatefulWidget {
  final String content;

  Demo07(this.content);

  @override
  _Demo07State createState() => _Demo07State();
}

class _Demo07State extends State<Demo07> {
  List<WrapItemModel> list;

  @override
  void initState() {
    super.initState();
    list = List<WrapItemModel>()..add(WrapItemModel(0, _addItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.content),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          width: double.infinity,
          height: 400,
          child: Wrap(
            spacing: 10.0,
            children: list.map((e) => e.widget).toList(),
          ),
          color: Colors.grey[200],
        ),
      ),
    );
  }

  Widget _addItem() {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (list.length <= 9) {
            list.insert(list.length - 1,
                WrapItemModel(list.length, _pictureItem(list.length)));
          }
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.grey[400],
          width: 80.0,
          height: 80.0,
          child: Icon(Icons.add, size: 30.0),
        ),
      ),
    );
  }

  Widget _pictureItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print('Remove object index is $index');
          if (list.length > 1) {
            list.removeWhere((element) => element.index == index);
          }
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          color: Colors.teal,
          width: 80.0,
          height: 80.0,
          child: Text(
            '$index',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class WrapItemModel {
  final int index;
  final Widget widget;

  WrapItemModel(this.index, this.widget);
}
