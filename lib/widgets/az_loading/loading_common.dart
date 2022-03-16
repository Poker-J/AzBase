import 'package:flutter/material.dart';

import '../../index.dart';
import 'load_dialog.dart';

///弹窗
class LoadingCommon extends StatelessWidget {
  final bool isMask;

  const LoadingCommon({Key key, this.isMask}) : super(key: key);
  static String msgText = '加载中...';

  @override
  Widget build(BuildContext context) {
    double topFlag = 0;
    double leftFlag = 0;
    double widthFlag = Const.screenWidth;
    double heightFlag = Const.screenHeight;

    if (!isMask) {
      topFlag = Const.screenHeight / 2 - 50;
      leftFlag = Const.screenWidth / 2 - 50;
      widthFlag = 100;
      heightFlag = 100;
    }

    return Positioned(
      top: topFlag,
      left: leftFlag,
      width: widthFlag,
      height: heightFlag,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(isMask ? 0 : 8)),
          color: Colors.black38,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [commonItem()]),
          ],
        ),
      ),
    );
  }

  static int _loadingCount = 0;
  static OverlayEntry _overlayEntryCurrent;

  static bool get loading {
    final temp = _loadingCount > 0;
    if (!temp) {
      _loadingCount = 0;
    }
    return temp;
  }

  //todo 锁
  //展示弹框
  static void show(BuildContext context,
      {bool mask = true, String msg = '加载中...'}) {
    final overlayState = Overlay.of(context);
    //提示文案
    msgText = msg;
    if (loading) {
      _loadingCount += 1;
    } else {
      _loadingCount += 1;
      //延时0.25s执行,如果.25秒之内请求完成则不闪烁loading
      Future.delayed(const Duration(milliseconds: 250), () {
        if (loading) {
          _overlayEntryCurrent =
              OverlayEntry(builder: (context) => LoadingCommon(isMask: mask));
          overlayState.insert(_overlayEntryCurrent);
        }
      });
    }
  }

  //弹框消失
  static void dismiss() {
    _loadingCount -= 1;
    if (!loading && _overlayEntryCurrent != null) {
      _overlayEntryCurrent.remove();
      _overlayEntryCurrent = null;
    }
  }

  static Widget forwardLoading(Widget showWidget) {
    return Stack(
      children: [
        showWidget,
        Center(
          child: commonItem(),
        )
      ],
    );
  }

  static Widget commonItem() {
    return LoadingDialog(text: msgText);
  }
}
