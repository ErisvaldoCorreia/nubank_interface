import 'package:flutter/material.dart';

import 'item_menu.dart';

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
          height: MediaQuery.of(context).size.height * .62,
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/qrcode.png",
                height: 100,
              ),
              SizedBox(height: 10,),
              Text.rich(
                TextSpan(
                  text: "Banco ",
                  children: [
                    TextSpan(
                      text: "260 - Nu Pagamentos S.A",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5,),
              Text.rich(
                TextSpan(
                  text: "Agência - ",
                  children: [
                    TextSpan(
                      text: "0001",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5,),
              Text.rich(
                TextSpan(
                  text: "Conta - ",
                  children: [
                    TextSpan(
                      text: "01010101-0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: <Widget>[
                    ItemMenu(
                      icon: Icons.info_outline,
                      text: "Me Ajuda",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
