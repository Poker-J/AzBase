
import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/widgets/az_icon/az_icon.dart';
import 'package:az_base/widgets/az_image/az_image.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

///加载中页面
class AzLoadingWidget extends StatelessWidget {
  const AzLoadingWidget({
    Key key,
    this.color = Colors.white,
    this.size = 24.0,
    this.text = '加载中...',
    this.textColor,
  }) : super(key: key);

  final Color color;
  final double size;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: double.infinity,
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        AzIcon(
          child: AzImage(
            'assets/images/refresh/icon_loading_gray.png',
            width: size,
            height: size,
          ),
          spin: true,
          size: size,
          duration: 1500,
        ),
        text.isNotEmpty
            ? Container(
                margin: EdgeInsets.only(top: getAdapterSize(5)),
                child: Text(text, style: TextStyle(color: textColor ?? Colours.tip, fontSize: getAdapterSize(12))),
              )
            : Container()
      ]),
    );
  }
}
