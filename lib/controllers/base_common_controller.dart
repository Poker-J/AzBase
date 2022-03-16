
import 'package:az_base/services/result_data.dart';

import 'base_page_controller.dart';

abstract class BaseCommonController<T> extends BasePageController {


  @override
  onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    setLoading();
    initializeData();
  }

  ///获取数据
  void initializeData() async {
    // try {
    //
    // } catch (err) {
    //   print('-------try错误---->${err.toString()}');
    //   setError(ResultData(err.toString(), false, HttpCode.OTHER_ERROR));
    // }
    var response = await loadData();
    if(response.isSuccess){ //请求成功
      setSuccess();
      //调用解析返回值
      parseResponse(response.data);
    }else{
      print('-------结果错误---->');
      setError(response);
    }
    update();
  }

  /// @desc 加载数据
  /// @params pageNum 页码数
  Future<ResultData> loadData();

  ///解析返回值
  void parseResponse(responseData);
}
