import 'package:flutter/material.dart';
import 'expansion_panel_demo.dart';
import 'expansion_tile_demo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '展开闭合案例ExpansionTile控件',
//      home: ExpansionTileDemo(),
      home: ExpansionPanelListDemo(),
      theme: ThemeData.dark(),
    );
  }
}
