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
        child: ListView(
          children: <Widget>[
            ListTile(
              minVerticalPadding: 20.0,
              leading: Container(
                  child: Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    child: Image.network(
                      "https://tse1-mm.cn.bing.net/th?id=OIP-C.F1nTw1kjCtFZtLxPfXu57AHaHZ&w=149&h=160&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
                      width: 55.0,
                      height: 55.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  ClipRRect(
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  )
                ],
              )),
              title: Text('User1'),
              subtitle: Text('最后一条消息'),
              trailing: Container(
                height: double.maxFinite,
                child: Text(
                  '2021-07-30',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              onTap: () {
                print('tap item');
              },
              onLongPress: () {
                print('long press item');
              },
            )
          ],
        ));
  }
}
