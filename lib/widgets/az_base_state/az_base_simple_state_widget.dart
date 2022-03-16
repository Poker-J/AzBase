import 'package:az_base/controllers/base_page_controller.dart';
import 'package:az_base/widgets/az_empty/az_empty.dart';
import 'package:az_base/widgets/az_loading/az_loading_widget.dart';
import 'package:flutter/material.dart';

/// 简单基础页面状态组件
class AzBaseSimpleStateWidget extends StatelessWidget {
  const AzBaseSimpleStateWidget({
    Key key,
    this.child,
    this.logic,
    this.loadData,
    this.emptyEnum = EmptyEnum.data,
    this.emptyText = '暂无数据',
    this.butText ='点击刷新',
  }) : super(key: key);

  final Widget child;
  final BasePageController logic;
  final Function loadData;
  final EmptyEnum emptyEnum;
  final String emptyText;
  final String butText;

  @override
  Widget build(BuildContext context) {
    if (logic.pageState.value == PageState.loading) {
      return const AzLoadingWidget();
    }
    if (logic.pageState.value == PageState.error) {
      return AzEmpty(
        mode: EmptyEnum.page,
        text: '数据错误,请重试!',
        onTap: loadData,
      );
    }
    if (logic.pageState.value == PageState.noneNetwork) {
      return AzEmpty(
        mode: EmptyEnum.wifi,
        text: '网络连接异常,请检查网络!',
        onTap: loadData,
      );
    }
    if (logic.pageState.value == PageState.empty) {
      return AzEmpty(
        mode: emptyEnum,
        text: emptyText,
        onTap: loadData,
        btnText: butText,
      );
    }
    return child;
  }
}
