import 'package:flutter/material.dart';

class Demo08 extends StatefulWidget {
  final String title;

  Demo08(this.title);

  @override
  _Demo08State createState() => _Demo08State();
}

class _Demo08State extends State<Demo08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {},
            children: [
              ExpansionPanel(
//                isExpanded: true,
                headerBuilder: (context, isExpanded) {
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Item1'),
                  );
                },
                body: Container(
                  child: Text('Item1 description'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
