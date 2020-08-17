import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nuAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          //color: Colors.red,
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/nubank.png",
                    height: 35,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10,),
                  Text("Erisvaldo",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Icon(Icons.expand_more,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
