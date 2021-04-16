import 'package:flutter/material.dart';
//import 'right_back_demo.dart';
import 'first_level_page.dart';

main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '右滑返回上一页效果制作',
//      home: RightBackDemo(),
        home: SplashScreenDemo(),
    );
  }
}


class SplashScreenDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenDemoState();
}

class SplashScreenDemoState extends State<SplashScreenDemo>
    with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
              return HomePage();
            }), (route) => route == null);
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _animation,
      child: Image.network(
        'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3565173774,1989253727&fm=26&gp=0.jpg',
        scale: 2.0, fit: BoxFit.cover,),);
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FirstLevelPage> _pages;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = List<FirstLevelPage>()
      ..add(FirstLevelPage('首页'))..add(FirstLevelPage('商城'))..add(
          FirstLevelPage('购物车'))..add(FirstLevelPage('账户'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.local_mall), label: '商城'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: '购物车'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '账户'),
        ],
      ),
    );
  }
}




