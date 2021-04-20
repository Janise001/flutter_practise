import 'package:flutter/material.dart';

class ShowBottomSheetDemo extends StatefulWidget {
  final String title;

  ShowBottomSheetDemo(this.title);

  @override
  _ShowBottomSheetDemoState createState() => _ShowBottomSheetDemoState();
}

class _ShowBottomSheetDemoState extends State<ShowBottomSheetDemo> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  _showBottomSheet() {
    key.currentState.showBottomSheet((context) {
      return Container(
        height: 80.0,
        padding: EdgeInsets.only(top: 5.0,left: 10.0,right: 15.0,bottom: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
          boxShadow: [BoxShadow(color: Colors.grey[300],offset: Offset(5,5),blurRadius: 10,spreadRadius: 10)],
        ),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow)),
            Text('Bad'),
            Expanded(child: Text('Macheal Jackson',textAlign: TextAlign.right,)),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: _showBottomSheet,
            icon: Icon(Icons.radio_button_checked),
          ),
        ],
      ),
    );
  }
}
