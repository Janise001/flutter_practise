import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<PictureModel> _list;

  @override
  void initState() {
    super.initState();
    _list = List<PictureModel>()..add(PictureModel(tag: 0, item: _addItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            color: Colors.grey[100],
            width: double.infinity,
            height: 300,
            child: Wrap(
              children:
                  List.generate(_list.length, (index) => _list[index].item)
                      .toList(),
            ),
          ),
        ),
      ),
    );
  }

  // 添加部件
  Widget _addItem() {
    return GestureDetector(
      onTap: () {
        if (_list.length <= 9) {
          setState(() {
            _list.insert(
              _list.length - 1,
              PictureModel(tag: _list.length, item: _pictureItem(_list.length)),
            );
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          width: 80,
          color: Colors.grey[300],
          child: Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
    );
  }

  // 添加照片
  Widget _pictureItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _list.removeWhere((element) => element.tag == index);
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 80,
          height: 80,
          color: Colors.teal,
          child: Center(
            child: Text(
              '$index',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PictureModel {
  final int tag;
  final Widget item;

  PictureModel({this.tag, this.item});
}
