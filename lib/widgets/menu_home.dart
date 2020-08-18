import 'package:flutter/material.dart';

class MenuHome extends StatelessWidget {

  final double top;
  final bool showMenu;

  const MenuHome({
    Key key,
    this.top,
    this.showMenu
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          color: Colors.red,
          height: MediaQuery.of(context).size.height * .55,
          child: Column(
            children: <Widget>[
            Image.asset(
              "assets/images/qrcode.png",
              height: 50,
            ),
            ],
          ),
        ),
      ),
    );
  }
}
