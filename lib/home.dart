import 'package:flutter/material.dart';
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
          Positioned(
            top: MediaQuery.of(context).size.height * .20,
            height: MediaQuery.of(context).size.height * .55,
            left: 0,
            right: 0,
            child: PageView(
              children: <Widget>[
                Container(color: Colors.amber,),
                Container(color: Colors.black,),
                Container(color: Colors.blue,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
