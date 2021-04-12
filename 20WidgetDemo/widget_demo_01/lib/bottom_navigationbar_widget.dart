import 'package:flutter/material.dart';
import 'package:widgetdemo01/pages/airplay_screen.dart';
import 'package:widgetdemo01/pages/email_screen.dart';
import 'package:widgetdemo01/pages/home_screen.dart';
import 'package:widgetdemo01/pages/pages_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  Color _bottomNavigationBarColor;
  int _currentIndex = 0;
  List<Widget> pages = List();

  @override
  void initState() {
    super.initState();
    pages
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirPlay());
  }

  @override
  Widget build(BuildContext context) {
    _bottomNavigationBarColor = Theme.of(context).primaryColor;

    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: _bottomNavigationBarColor,
        unselectedItemColor: _bottomNavigationBarColor.withOpacity(0.4),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
//              color: _bottomNavigationBarColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'Pages'),
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: 'Airplay'),
        ],
      ),
    );
  }
}
