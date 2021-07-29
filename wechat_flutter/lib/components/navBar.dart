import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  late final Widget? child;
  late final Widget? title;
  late final Widget? leftIcon;
  late final List<Widget>? rightIcons;

  NavBar({this.child, this.title, this.leftIcon, this.rightIcons});
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottomOpacity: 0.5,
          leading: Container(
            child: widget.leftIcon,
          ),
          shadowColor: Colors.black38,
          centerTitle: true,
          title: widget.title,
          actionsIconTheme: IconThemeData(color: Colors.black54, size: 24),
          actions: widget.rightIcons,
        ),
        body: widget.child);
  }
}
