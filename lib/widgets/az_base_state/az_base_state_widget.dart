import 'package:az_base/controllers/base_common_controller.dart';
import 'package:az_base/controllers/base_page_controller.dart';
import 'package:az_base/widgets/az_empty/az_empty.dart';
import 'package:az_base/widgets/az_loading/az_loading_widget.dart';
import 'package:flutter/material.dart';

/// 基础页面状态组件
class AzBaseStateWidget extends StatelessWidget {
  const AzBaseStateWidget({Key key, this.child, this.logic,this.errorText = '数据错误,请重试!'}) : super(key: key);

  final Widget child;
  final BaseCommonController logic;
 final String errorText;

  @override
  Widget build(BuildContext context) {
    if (logic.pageState.value == PageState.loading) {
      return AzLoadingWidget();
    }
    if (logic.pageState.value == PageState.error) {
      return AzEmpty(
        mode: EmptyEnum.page,
        text: errorText,
        onTap: logic.loadData,
      );
    }
    if (logic.pageState.value == PageState.noneNetwork) {
      return AzEmpty(
        mode: EmptyEnum.wifi,
        text: '网络连接异常,请检查网络!',
        onTap: logic.loadData,
      );
    }
    if (logic.pageState.value == PageState.empty) {
      return AzEmpty(
        mode: EmptyEnum.page,
        onTap: logic.loadData,
      );
    }
    return child;
  }
}
