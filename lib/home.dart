import 'package:flutter/material.dart';
import 'package:nubankinterface/widgets/nu_app_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          nuAppBar(),
        ],
      ),
    );
  }
}
