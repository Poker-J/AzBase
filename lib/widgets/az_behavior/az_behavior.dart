import 'package:flutter/material.dart';

class AzBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return child;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return GlowingOverscrollIndicator(
          child: child,
          showLeading: false,
          showTrailing: false,
          axisDirection: axisDirection,
          color: Theme.of(context).primaryColor,
        );
      default:
        return child;
    }
  }
}

class AzScrollConfiguration extends StatelessWidget {
 const AzScrollConfiguration({Key key,this.child}):super(key: key);
 final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: AzBehavior(),
      child: child,
    );
  }
}
