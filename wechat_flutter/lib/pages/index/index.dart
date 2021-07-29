import 'package:flutter/material.dart';
import '../../components/navBar.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return NavBar(
        title: Text("微信"),
        leftIcon: Icon(Icons.more_horiz),
        rightIcons: [
          Container(
            width: 45,
            child: Icon(
              Icons.search,
            ),
          ),
          Container(
            width: 45,
            child: Icon(Icons.add_circle_outline),
          ),
        ],
        child: Icon(IconData(0xe601, fontFamily: 'iconfont')));
  }
}
