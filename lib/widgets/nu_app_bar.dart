import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NuAppBar extends StatelessWidget {

  final bool showMenu;
  final VoidCallback onTap;
  const NuAppBar({
    Key key,
    this.showMenu,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            // Marcação de cor apenas para estudo de posição
            // color: Colors.red,
            height: MediaQuery.of(context).size.height * .16,
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
                Icon(
                  !showMenu ? Icons.expand_more : Icons.expand_less,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
