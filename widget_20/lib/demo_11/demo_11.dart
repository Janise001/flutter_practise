import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Demo11 extends StatefulWidget {
  final String content;

  Demo11(this.content);

  @override
  _Demo11State createState() => _Demo11State();
}

class _Demo11State extends State<Demo11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.content),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(CupertinoPageRoute(builder: (builder){
              return Demo11('新加一层');
            }));
          },
          child: Container(
            height: 100.0,
            width: 100.0,
            child: Icon(Icons.add,color: Colors.white,size: 50.0,),
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
