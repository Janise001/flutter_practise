import 'dart:ui';

import 'package:flutter/material.dart';

class Demo04 extends StatefulWidget {
  final String title;

  Demo04(this.title);

  @override
  _Demo04State createState() => _Demo04State();
}

class _Demo04State extends State<Demo04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Image.network(
                  'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2961974070,137066290&fm=26&gp=0.jpg'),
            ),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    child: Center(
                      child: Text(
                        'Janise'.toUpperCase(),
//                          style: TextStyle(
//                            color: Colors.teal,
//                            fontSize: 60.0,
//                            fontWeight: FontWeight.bold,
//                          )),
                        style: TextStyle(
                          color: Theme.of(context).textTheme.display3.color,
                          fontSize: 60.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
