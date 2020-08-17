import 'package:flutter/cupertino.dart';
import 'package:nubankinterface/widgets/card_app_main.dart';

class PageViewHome extends StatelessWidget {

  final double top;
  const PageViewHome({
    Key key,
    this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .55,
      left: 0,
      right: 0,
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}
