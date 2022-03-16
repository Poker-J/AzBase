import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/widgets/az_inkwell/az_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../index.dart';

///button组件
class AzButton extends StatelessWidget {
  AzButton({
    Key key,
    this.value,
    this.size = SizeEnum.middle,
    this.radius = 0,
    this.borderColor = Colors.white,
    this.borderWidth = 0,
    this.textColor = Colors.white,
    this.onTap,
    this.width = 0,
    this.height = 0,
    this.fontSize = 0,
    this.color,
  }) : super(key: key);

  final SizeEnum size;
  double fontSize;
  double height;
  double width;
  double radius;
  Color borderColor;
  double borderWidth;
  Color color;
  Function onTap;
  String value;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    getWHSize(size);
    return AzInkWell(
      onTap: onTap ?? () {},
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color ?? Colours.primary,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        child: Text(value ?? '', style: TextStyle(color: textColor, fontSize: fontSize)),
      ),
    );
  }

  //根据尺寸获取图片宽高
  void getWHSize(size) {
    switch (size) {
      case SizeEnum.small:
        height = getAdapterSize(24);
        width = Const.screenWidth * 0.2;
        fontSize = getAdapterSize(10);
        break;
      case SizeEnum.middle:
        height = getAdapterSize(40);
        width = Const.screenWidth * 0.4;
        fontSize = getAdapterSize(14);
        break;
      case SizeEnum.big:
        height = getAdapterSize(60);
        fontSize = getAdapterSize(16);
        width = Const.screenWidth;
        break;
    }
  }
}
