import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轻量级提示操作'),
      ),
      body: Center(
        child: Tooltip(
          message: '来啊，快活啊！',
          child: Image.network(
            'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3677826947,3448351228&fm=26&gp=0.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}