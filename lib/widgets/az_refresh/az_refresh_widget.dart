import 'package:az_base/commons/configs/const.dart';
import 'package:az_base/controllers/base_page_controller.dart';
import 'package:az_base/widgets/az_empty/az_empty.dart';
import 'package:az_base/widgets/az_loading/az_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import 'az_refresh_header.dart';
import 'az_refresh_footer.dart';

///下拉刷新组价
class AzRefreshWidget extends StatelessWidget {
  const AzRefreshWidget({
    Key key,
    this.onRefresh,
    this.loadMore,
    this.child,
    this.easyRefreshController,
    this.headerTextColor = const Color(0xff333333),
    this.pageState = PageState.loading,
    this.emptyEnum = EmptyEnum.data,
    this.emptySize = SizeEnum.big,
    this.emptyText = '暂无数据',
  }) : super(key: key);

  final OnRefreshCallback onRefresh;
  final OnLoadCallback loadMore;
  final Widget child;
  final EasyRefreshController easyRefreshController;
  final Color headerTextColor;
  final PageState pageState;
  final EmptyEnum emptyEnum;
  final String emptyText;
  final SizeEnum emptySize ;
  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        controller: easyRefreshController,
        onRefresh: onRefresh,
        onLoad: pageState == PageState.empty ? null : loadMore,
        header: AzRefreshHeader(textColor: headerTextColor),
        footer: AzRefreshFooter(),
        emptyWidget: pageState == PageState.loading
            ? const AzLoadingWidget()
            : pageState == PageState.empty
                ? AzEmpty(
                    mode: emptyEnum,
                    text: emptyText,
                    size: emptySize,
                    onTap: onRefresh,
                  )
                : pageState == PageState.error
                    ? AzEmpty(
                        mode: EmptyEnum.page,
                        text: '数据错误,请重试!',
                        size: emptySize,
                        onTap: onRefresh,
                      )
                    : pageState == PageState.noneNetwork
                        ? AzEmpty(
                            mode: EmptyEnum.wifi,
                            size: emptySize,
                            text: '网络连接异常,请检查网络!',
                            onTap: onRefresh,
                          )
                        : null,
        child: child);
  }
}
