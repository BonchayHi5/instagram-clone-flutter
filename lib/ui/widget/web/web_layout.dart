import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  final Widget widget;

  WebLayout({@required this.widget});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(flex: 2, child: Container()),
        Container(
          width: 800,
          child: widget,
        ),
        Flexible(flex: 2, child: Container())
      ],
    );
  }
}
