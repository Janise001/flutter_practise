import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ExpansionTile(
          title: Text('ExpansionTile title'),
          leading: Icon(Icons.ac_unit),
          initiallyExpanded: true,
          backgroundColor: Colors.teal,
          children: [
            ListTile(
              title: Text('ListTile title'),
              subtitle: Text('ListTile subtitle'),
            ),
          ],
        ),
      ),
    );
  }
}
