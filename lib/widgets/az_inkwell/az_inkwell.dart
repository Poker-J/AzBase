import 'package:flutter/material.dart';

import '../../index.dart';

///点击事件组件
class AzInkWell extends StatelessWidget {
  const AzInkWell({Key key, this.child, this.onTap, this.time = 1000}) : super(key: key);

  final Widget child;
  final Function onTap;
  final int time;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        onTapRepetition(onTap, time: time);
      },
      child: child,
    );
  }
}
