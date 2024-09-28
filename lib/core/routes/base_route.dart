import 'package:flutter/cupertino.dart';

class BaseRoute extends PageRouteBuilder<dynamic> {
  BaseRoute({required Widget screen})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return Stack(
              children: [screen],
            );
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget widget) {
            const begin = 0.0;
            const end = 1.0;
            final curvedAnimations = CurvedAnimation(
              parent: animation,
              curve: Curves.bounceInOut,
            );
            final tween = Tween<double>(begin: begin, end: end);
            return FadeTransition(
              opacity: curvedAnimations,
              child: widget,
            );
          },
        );
}
