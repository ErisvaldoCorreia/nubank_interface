import 'package:flutter/material.dart';

class CardApp extends StatefulWidget {
  @override
  _CardAppState createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
