import 'package:flutter/material.dart';
import 'package:widgetdemo02/each_view.dart';

class MyAppHomeMaterial extends StatefulWidget {
  @override
  _MyAppHomeMaterialState createState() => _MyAppHomeMaterialState();
}

class _MyAppHomeMaterialState extends State<MyAppHomeMaterial> {
  List<Widget> pages = List();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pages..add(EachView('home'))..add(EachView('Airplay'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return EachView('Add');
            },
          ));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.red,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.airplay,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
