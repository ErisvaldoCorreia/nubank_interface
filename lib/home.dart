import 'package:flutter/material.dart';
import 'package:nubankinterface/page_view_home.dart';
import 'package:nubankinterface/widgets/nu_app_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool _showMenu;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
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
            top: MediaQuery.of(context).size.height * .20,
          ),
        ],
      ),
    );
  }
}
