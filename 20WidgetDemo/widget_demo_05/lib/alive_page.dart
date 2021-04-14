import 'package:flutter/material.dart';

class AlivePage extends StatefulWidget {
  final int index;

  AlivePage(this.index);

  @override
  _AlivePageState createState() => _AlivePageState();
}

// 当不同的页面需要使用同一个页面构造的时候使用AutomaticKeepAliveClientMixin，需要加wantKeepAlive，这样不会重构对应页面，不会重复调用initState方法
class _AlivePageState extends State<AlivePage>
    with AutomaticKeepAliveClientMixin {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    print('当前点击index为${widget.index}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlivePage'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('点一次增加一个数字'),
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

  @override
  bool get wantKeepAlive => true;
}
