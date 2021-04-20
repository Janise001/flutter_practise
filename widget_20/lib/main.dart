import 'package:flutter/material.dart';
import 'package:widget20/demo_01/demo_01.dart';
import 'package:widget20/demo_02/demo_02.dart';
import 'package:widget20/demo_03/demo_03.dart';
import 'package:widget20/demo_04/demo_04.dart';
import 'package:widget20/demo_05/demo_05.dart';
import 'package:widget20/demo_06/demo_06.dart';
import 'package:widget20/demo_07/demo_07.dart';
import 'package:widget20/demo_08/demo_08.dart';
import 'package:widget20/demo_09/demo_09.dart';
import 'package:widget20/demo_10/demo_10.dart';
import 'package:widget20/demo_11/demo_11.dart';
import 'package:widget20/demo_12/demo_12.dart';
import 'package:widget20/demo_13/demo_13.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20个小部件的制作',
      home: HomeList(),
    );
  }
}

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('20个小部件'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('底部导航栏和切换效果的制作'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo01('底部导航栏和切换效果的制作');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('不规则底部工具栏的制作'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo02('不规则底部工具栏的制作');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('路由跳转的动画效果'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo03('路由跳转的动画效果');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('磨砂玻璃效果'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo04('磨砂玻璃效果');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('保持页面状态'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo05('保持页面状态');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('不简单的搜索框'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              showSearch(context: context, delegate: Demo06());
            },
          ),
          Divider(),
          ListTile(
            title: Text('Wrap流式布局'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo07('Wrap流式布局');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('展开闭合案例ExpansionTile'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo08('展开闭合案例ExpansionTile');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('路径裁切和二次贝塞尔曲线'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo09('路径裁切和二次贝塞尔曲线');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('App闪屏动画制作'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo10('App闪屏动画制作');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('右滑返回上一页制作'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo11('右滑返回上一页制作');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('提示操作'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo12('提示操作');
              }));
            },
          ),
          Divider(),
          ListTile(
            title: Text('可移动部件'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Demo13('可移动部件');
              }));
            },
          ),
        ],
      ),
    );
  }
}
