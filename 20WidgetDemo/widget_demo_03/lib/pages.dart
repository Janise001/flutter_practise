import 'package:flutter/material.dart';
import 'custom_route.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('FirstPage'),
        elevation: 0.0,
        titleTextStyle: TextStyle(fontSize: 32.0),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
//            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
//              return SecondPage();
//            }));
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('SecondPage'),
        elevation: 0.0,
        titleTextStyle: TextStyle(fontSize: 32.0),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}
