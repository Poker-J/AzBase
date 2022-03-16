
import 'package:az_base/widgets/az_loading/loading_common.dart';
import 'package:get/get.dart';

///请求加载框
class Loading {
  //显示
  static show({String tip = '加载中...'}) {
    LoadingCommon.show(Get.overlayContext, msg: tip);
  }

  //隐藏
  static dismiss() {
    LoadingCommon.dismiss();
  }
}
