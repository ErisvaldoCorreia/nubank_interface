import 'package:flutter/cupertino.dart';
import 'package:nubankinterface/widgets/card_app_main.dart';

class PageViewHome extends StatelessWidget {

  final double top;
  final ValueChanged<int> onChanged;
  final bool showMenu;

  const PageViewHome({
    Key key,
    this.top,
    this.onChanged,
    this.showMenu
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(
          milliseconds: 400
      ),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .55,
      left: 0,
      right: 0,
      child: PageView(
        onPageChanged: onChanged,
        physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
        children: <Widget>[
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}
