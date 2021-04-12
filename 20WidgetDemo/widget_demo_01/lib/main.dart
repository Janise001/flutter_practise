import 'package:flutter/material.dart';
import 'bottom_navigationbar_widget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter bottom navigationbar',
      home: BottomNavigationBarWidget(),
      theme: ThemeData(
        primaryColor: Colors.red[500],
      ),
    );
  }
}
