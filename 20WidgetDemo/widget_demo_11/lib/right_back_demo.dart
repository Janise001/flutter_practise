import 'package:flutter/cupertino.dart';

class RightBackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.activeOrange,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
//              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//                return RightBackDemo();
//              }));
            Navigator.of(context).push(CupertinoPageRoute(builder: (context){
              return RightBackDemo();
            }));
            },
          ),
        ),
      ),
    );
  }
}
