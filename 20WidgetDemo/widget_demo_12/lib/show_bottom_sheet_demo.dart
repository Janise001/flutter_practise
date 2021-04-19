import 'package:flutter/material.dart';

class ShowBottomSheetDemo extends StatefulWidget {
  @override
  _ShowBottomSheetDemoState createState() => _ShowBottomSheetDemoState();
}

class _ShowBottomSheetDemoState extends State<ShowBottomSheetDemo> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  _alert() {
    _key.currentState.showBottomSheet((context) {
      return Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(color: Colors.grey[500],offset: Offset(5,5),blurRadius: 15,spreadRadius: -3),
          ],
        ),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow)),
            Text('Bad'),
            Expanded(
              child: Text(
                'Michael Jackson',
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('ShowBottomSheetDemo'),
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
              '点击播放音乐',
            ),
          ],
        ),
      ),
    );
  }
}
