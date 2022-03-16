import 'package:flustars/flustars.dart';

///虎丘屏幕参数常量
class Const {
  // 屏幕宽度
  static double screenWidth = ScreenUtil.getInstance().screenWidth;
  // 屏幕高度
  static double screenHeight = ScreenUtil.getInstance().screenHeight;
  // 状态栏高度
  static double statusBarHeight = ScreenUtil.getInstance().statusBarHeight;
  // 导航栏高度
  static double appBarHeight = ScreenUtil.getInstance().appBarHeight;
  // 底部栏高度
  static double bottomBarHeight = ScreenUtil.getInstance().bottomBarHeight;
  // 状态栏+导航栏的高度
  static double appTopHeight = statusBarHeight + appBarHeight;
  // banner高度
  static double bannerHeight = (screenWidth - 30) * 0.45;
}

///大小常量
enum SizeEnum { small, middle, big ,other}

//二维码类型
class OrCodeTypeEnum {
  static String userOrCode = 'userOrCode';
  static String groupOrCode = 'groupOrCode';
}
