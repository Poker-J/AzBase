
import 'package:az_base/services/index.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';

import 'base_page_controller.dart';

///List基类控制器
abstract class BaseListController<T> extends BasePageController {

  ///初始化页码
  static const int page = 1;

  ///每页数量
  static const int pageSize = 10;

  EasyRefreshController easyRefreshController = EasyRefreshController();

  RxList<T> dataBean = <T>[].obs;

  /// 当前页码
  int _currentPageNum = page;

  @override
  onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    setLoading();
    onRefresh();
  }

  ///下拉刷新
  Future<void> onRefresh() async {
    try {
      _currentPageNum = 1;
      var data = await loadData(page: _currentPageNum);
      if (data.isEmpty) {
        dataBean.clear();
        setEmpty();
      } else {
        dataBean..clear()..assignAll(data);
        setSuccess();
      }
    } catch (err) {
      LogUtil.e('------try错误------>${err.toString()}');
      setError(ResultData(err.toString(), false, HttpCode.OTHER_ERROR));
    }
    easyRefreshController
      ..finishRefresh(success: true)
      ..finishLoad(success:true, noMore: false);
    update();
  }


  ///加载更多
  Future<void> loadMore() async {
    var moreData = true;
    try {
      var data = await loadData(page: ++_currentPageNum);
      moreData = data.length == pageSize;
      dataBean.addAll(data);
    } catch (err) {
      LogUtil.e('------try加载错误------>${err.toString()}');
      setError(ResultData(err.toString(), false, HttpCode.OTHER_ERROR));
    }
    easyRefreshController
      ..finishRefresh(success: true)
      ..finishLoad(success:true, noMore: !moreData);
    update();
  }



  /// @desc 加载数据
  /// @params pageNum 页码数
  Future<List<T>> loadData({int page});

  @override
  void onClose() {
    super.onClose();
    easyRefreshController.dispose();
  }
}
