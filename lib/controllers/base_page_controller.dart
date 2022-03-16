
import 'package:az_base/services/http_code.dart';
import 'package:az_base/services/result_data.dart';
import 'package:get/get.dart';

///页面状态枚举
enum PageState { loading, error, empty, success, noneNetwork }

///page基类控制器
class BasePageController extends FullLifeCycleController {
  //页面状态
  Rx<PageState> pageState = PageState.loading.obs;



  ///加载中
  setLoading() {
    pageState.value = PageState.loading;
  }

  ///错误
  ///[ResultData] 返回实体类
  setError(ResultData response) {
    ///判断错误类型
    switch (response.code) {
      case HttpCode.NONE_NETWORK: //无网络
        pageState.value = PageState.noneNetwork;
        break;
      default: //默认错误类型
        pageState.value = PageState.error;
    }
  }

  ///空布局
  setEmpty() {
    pageState.value = PageState.empty;
  }

  ///成功
  setSuccess() {
    pageState.value = PageState.success;
  }

  ///无网络
  setNoneNetwork() {
    pageState.value = PageState.noneNetwork;
  }
}
