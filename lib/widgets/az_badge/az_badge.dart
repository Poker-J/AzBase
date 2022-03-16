import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../index.dart';

class AzBadge extends StatelessWidget {
  const AzBadge({
    Key key,
    this.value,
    this.child,
    this.dot = false,
    this.overflowCount = 99,
    this.showZero = false,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.fontSize,
    this.padding,
    this.dotSize,
    this.positionTop,
    this.positionRight,
    this.onTap,
  }) : super(key: key);

  final dynamic value;
  final Widget child;
  final bool dot;
  final int overflowCount;
  final bool showZero;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double fontSize;
  final EdgeInsets padding;
  final double dotSize;
  final double positionTop;
  final double positionRight;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    Color textColor = this.textColor ?? HexColor('#ffffff');
    double fontSize = this.fontSize ?? getAdapterSize(12);
    Color borderColor = this.borderColor ?? HexColor('#ffffff');
    double borderWidth = this.borderWidth ?? getAdapterSize(1);
    Color backgroundColor = this.backgroundColor ?? HexColor('#fb602c');
    EdgeInsets padding = this.padding ?? EdgeInsets.symmetric(vertical: getAdapterSize(3));
    double dotSize = this.dotSize ?? getAdapterSize(8);
    double positionTop = this.positionTop ?? -5.0;
    double positionRight = this.positionRight ?? -5.0;
    dynamic value = this.value;
    Widget badgeChild;

    if (value.runtimeType == String) {
      badgeChild = Text(value, style: TextStyle(color: textColor, fontSize: fontSize));
    } else if (value.runtimeType == int) {
      value = value <= overflowCount ? value : '$overflowCount+';
      badgeChild = Text(value.toString(), style: TextStyle(color: textColor, fontSize: fontSize));
    }
    badgeChild = Padding(padding: padding, child: badgeChild);
    if (dot) {
      badgeChild = null;
    }

    Widget badgeWidget = Container(
      alignment: Alignment.center,
      width: dot ? dotSize : null,
      height: dot ? dotSize : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: backgroundColor,
        border: borderWidth <= 0 ? null : Border.all(color: borderColor, width: borderWidth),
      ),
      child: badgeChild,
    );

    if (!dot) {
      badgeWidget = ConstrainedBox(
        constraints: BoxConstraints(minWidth: getAdapterSize(14), minHeight: getAdapterSize(14)),
        child: badgeWidget,
      );
    }

    if (value is Widget) {
      badgeWidget = value;
    }
    if (!showZero && value.runtimeType == int && value == 0) {
      badgeWidget = Container();
    }

    badgeWidget = GestureDetector(
      onTap: onTap,
      child: badgeWidget,
    );

    return Stack(
      clipBehavior: Clip.none,
      children: [
        child ?? badgeWidget,
        child != null ? Positioned(top: positionTop, right: positionRight, child: badgeWidget) : Container(),
      ],
    );
  }
}
