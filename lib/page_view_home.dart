import 'package:flutter/cupertino.dart';
import 'package:nubankinterface/widgets/card_app_main.dart';

class PageViewHome extends StatelessWidget {

  final double top;
  final ValueChanged<int> onChanged;

  const PageViewHome({
    Key key,
    this.top,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .55,
      left: 0,
      right: 0,
      child: PageView(
        onPageChanged: onChanged,
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
