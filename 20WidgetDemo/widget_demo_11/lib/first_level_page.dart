import 'package:flutter/cupertino.dart';
import 'package:widgetdemo11/second_level_page.dart';

class FirstLevelPage extends StatefulWidget {
  final String content;

  FirstLevelPage(this.content);

  @override
  _FirstLevelPageState createState() => _FirstLevelPageState();
}

class _FirstLevelPageState extends State<FirstLevelPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          Text('这是${widget.content}'),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(CupertinoPageRoute(builder: (context){
                return SecondLevelPage(widget.content);
              }));
            },
            child: Container(
              height: 100.0,
              width: 100.0,
              color: CupertinoColors.opaqueSeparator,
              child: Icon(CupertinoIcons.add),
            ),
          ),
        ],),
      ),
    );
  }
}
