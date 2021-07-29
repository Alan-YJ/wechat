import 'package:flutter/material.dart';
import 'pages/index/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int activeTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '微信',
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Color(0xff08C060),
          backgroundColor: Color(0xffEDEDED)),
      home: Scaffold(
        body: IndexPage(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeTabIndex,
          onTap: (index) {
            setState(() {
              activeTabIndex = index;
            });
          },
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: true,
          selectedItemColor: Colors.green[500],
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                IconData(
                  0xe61d,
                  fontFamily: 'iconfont',
                ),
              ),
              label: '微信',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(
                  0xe604,
                  fontFamily: 'iconfont',
                ),
              ),
              label: '通讯录',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(
                  0xe617,
                  fontFamily: 'iconfont',
                ),
              ),
              label: '发现',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(
                  0xe60a,
                  fontFamily: 'iconfont',
                ),
              ),
              label: '我',
            ),
          ],
        ),
      ),
    );
  }
}
