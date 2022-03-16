import 'package:az_base/commons/configs/iconfont.dart';
import 'package:az_base/commons/configs/style.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

AppBar appBar(
  BuildContext context, {
  String title = '',
  bool showBack = true,
  List<Widget> actions,
  result,
  bool centerTitle = true,
  double elevation = 0.0,
  PreferredSizeWidget bottomWidget,
  Color backIconColor,
  Color backgroundColor = Colors.white,
  Brightness brightness = Brightness.light,
  Widget titleWidget,
}) {
  backIconColor ??= Colours.subTitle;
  return AppBar(
    backgroundColor: backgroundColor,
    elevation: elevation,
    title: titleWidget ??
        Text(title,
            style: TextStyle(color: brightness == Brightness.light ? Colours.title : Colours.white, fontSize: getAdapterSize(18), fontWeight: FontWeight.w400)),
    centerTitle: centerTitle,
    leadingWidth: 50,
    leading: showBack
        ? InkWell(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: IconFont(IconNames.az_arrow_left, color: colorHex(backIconColor), size: 5),
            ),
            onTap: () => Navigator.of(context).pop(result),
          )
        : Container(),
    actions: actions,
    bottom: bottomWidget,
  );
}
