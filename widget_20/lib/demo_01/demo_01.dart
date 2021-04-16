import 'package:flutter/material.dart';
import 'package:widget20/pages/pages.dart';

class Demo01 extends StatefulWidget {
  final String title;
  Demo01(this.title);
  @override
  _Demo01State createState() => _Demo01State();
}

class _Demo01State extends State<Demo01> {
  int _currentIndex = 0;

  List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = List<Widget>()
      ..add(NormalPage('首页'))
      ..add(NormalPage('市场'))
      ..add(NormalPage('福利'))
      ..add(NormalPage('账户'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: '市场'),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: '福利'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '账户'),
        ],
      ),
    );
  }
}
