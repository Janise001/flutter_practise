import 'package:flutter/material.dart';

class ShowSnackBarDemo extends StatefulWidget {
  final String title;

  ShowSnackBarDemo(this.title);

  @override
  _ShowSnackBarDemoState createState() => _ShowSnackBarDemoState();
}

class _ShowSnackBarDemoState extends State<ShowSnackBarDemo> {
  final key = GlobalKey<ScaffoldState>();

  _showSnackBar() {
//    Scaffold.of(context).showSnackBar(SnackBar(
//      content: Text('Showing...'),
//      action: SnackBarAction(
//          label: 'OK',
//          onPressed: () {
//            Navigator.pop(context);
//          }),
//    ));
    key.currentState.showSnackBar(SnackBar(
      duration: Duration(milliseconds: 2000),
      content: Text('Registering...'),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    ));
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
            onPressed: _showSnackBar,
            icon: Icon(Icons.radio_button_checked),
          ),
        ],
      ),
    );
  }
}
