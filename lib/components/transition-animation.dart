import 'package:flutter/material.dart';

class TransitionAnimation extends PageRouteBuilder {
  final Widget widget;
  TransitionAnimation({this.widget})
      : super(
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder:
                (BuildContext context, Animation<double> animation, Animation<double> secAnimation, Widget child) {
              animation = CurvedAnimation(parent: animation, curve: Curves.easeIn);
              return ScaleTransition(
                scale: animation,
                alignment: Alignment.center,
                child: child,
              );

              /*SIZE TRANSITION EFFECT*/
              // SizeTransition(
              //   sizeFactor: animation,
              //   child: child,
              // );
            },
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation) {
              return widget;
            });
}
