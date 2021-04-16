import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'third_level_page.dart';

class SecondLevelPage extends StatefulWidget {
  final String content;

  SecondLevelPage(this.content);

  @override
  _SecondLevelPageState createState() => _SecondLevelPageState();
}

class _SecondLevelPageState extends State<SecondLevelPage> {
//  @override
//  Widget build(BuildContext context) {
//    return CupertinoPageScaffold(
//      navigationBar: CupertinoNavigationBar(
////        previousPageTitle: '从${widget.content}到二级场景',
//        middle: Text('从${widget.content}到二级场景'),
//      ),
//      child: Center(
//        child: Text('从${widget.content}到二级场景',textDirection: TextDirection.ltr,),
//      ),
//    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('从${widget.content}到二级场景'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '从${widget.content}到二级场景',
            textDirection: TextDirection.ltr,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
                return ThirdLevelPage(widget.content);
              }));
            },
            child: Container(
              height: 100.0,
              width: 100.0,
              color: CupertinoColors.opaqueSeparator,
              child: Icon(CupertinoIcons.add),
            ),
          ),
        ],
      ),
    );
  }
}
