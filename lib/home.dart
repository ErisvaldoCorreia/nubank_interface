import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubankinterface/page_view_home.dart';
import 'package:nubankinterface/widgets/card_dots_app.dart';
import 'package:nubankinterface/widgets/nu_app_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool _showMenu;
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          NuAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewHome(
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            top: MediaQuery.of(context).size.height * .20,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .76,
            child: DotsCard(
              currentIndex: _currentIndex,
            ),
          ),
        ],
      ),
    );
  }
}
