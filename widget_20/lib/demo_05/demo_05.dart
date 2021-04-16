import 'package:flutter/material.dart';

class Demo05 extends StatefulWidget {
  final String content;

  Demo05(this.content);

  @override
  _Demo05State createState() => _Demo05State();
}

class _Demo05State extends State<Demo05> with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.content),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.gamepad),
            ),
            Tab(
              icon: Icon(Icons.event),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Demo05EachView('home'.toUpperCase()),
          Demo05EachView('gamepad'.toUpperCase()),
          Demo05EachView('event'.toUpperCase()),
        ],
        controller: _controller,
      ),
    );
  }
}

class Demo05EachView extends StatefulWidget {
  final String name;

  Demo05EachView(this.name);

  @override
  _Demo05EachViewState createState() => _Demo05EachViewState();
}

class _Demo05EachViewState extends State<Demo05EachView>
    with AutomaticKeepAliveClientMixin {
  int _count = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'title is ${widget.name}',
              style: Theme.of(context).textTheme.title,
            ),
            Text('点击添加'),
            Text('$_count'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}
