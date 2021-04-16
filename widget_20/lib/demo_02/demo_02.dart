import 'package:flutter/material.dart';
import 'package:widget20/pages/pages.dart';

class Demo02 extends StatefulWidget {
  final String title;

  Demo02(this.title);

  @override
  _Demo02State createState() => _Demo02State();
}

class _Demo02State extends State<Demo02> {
  List<Widget> _list;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _list = List<Widget>()..add(NormalPage('首页'))..add(NormalPage('账户'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _list[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: Icon(Icons.person)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return NormalPage('Add');
          }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
