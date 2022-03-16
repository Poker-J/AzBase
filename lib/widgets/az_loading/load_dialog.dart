import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/widgets/az_icon/az_icon.dart';
import 'package:az_base/widgets/az_image/az_image.dart';
import 'package:flutter/material.dart';

///弹框
class LoadingDialog extends Dialog {
  const LoadingDialog(
      {this.text = '',
      this.color,
      this.size = 100,
      this.iconSize = 24,
      Key key})
      : super(key: key);

  final String text;
  final Color color;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      //创建透明层
      type: MaterialType.transparency, //透明类型
      child: Center(
        //保证控件居中效果
        child: SizedBox(
          width: size,
          height: size,
          child: Container(
            decoration: const ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AzIcon(
                  child: AzImage(
                    'assets/images/refresh/icon_loading_gray.png',
                    width: iconSize,
                    height: iconSize,
                  ),
                  spin: true,
                  color: color ?? Colours.tip,
                  size: iconSize,
                  duration: 1500,
                ),
                text.isNotEmpty
                    ? Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(text,
                            style: TextStyle(
                                color: color ?? Colours.text, fontSize: 12)),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
