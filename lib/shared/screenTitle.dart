import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      curve: Curves.decelerate,
      duration: Duration(milliseconds: 1000),
      builder: (BuildContext context, double _interval, Widget child) {
        return Opacity(
          opacity: _interval,
          child: Padding(
            padding: EdgeInsets.all(_interval * 16),
            child: child,
          ),
        );
      },
    );
  }
}
