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
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * .65,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/qrcode.png",
                    height: 100,
                  ),
                  SizedBox(height: 15,),
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
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        ItemMenu(
                          icon: Icons.info_outline,
                          text: "Me Ajuda",
                        ),
                        ItemMenu(
                          icon: Icons.perm_identity,
                          text: "Perfil",
                        ),
                        ItemMenu(
                          icon: Icons.settings,
                          text: "Configurar conta",
                        ),
                        ItemMenu(
                          icon: Icons.credit_card,
                          text: "Configurar Cartão",
                        ),
                        ItemMenu(
                          icon: Icons.store,
                          text: "Pedir conta PJ",
                        ),
                        ItemMenu(
                          icon: Icons.mobile_screen_share,
                          text: "Configurações do app",
                        ),
                        SizedBox(height: 10,),
                        RaisedButton(
                          color: Colors.purple[800],
                          highlightColor: Colors.transparent,
                          elevation: 0,
                          focusElevation: 0,
                          highlightElevation: 0,
                          disabledElevation: 0,
                          hoverElevation: 0,
                          onPressed: (){},
                          child: Text("SAIR DO APP",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
