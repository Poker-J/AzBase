import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/widgets/az_icon/az_icon.dart';
import 'package:az_base/widgets/az_image/az_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import '../../index.dart';

class AzRefreshFooter extends Footer {
  final Key key;
  final bool empty;
  final double displacement;
  final Animation<Color> valueColor;
  final Color backgroundColor;

  final LinkFooterNotifier linkNotifier = LinkFooterNotifier();

  AzRefreshFooter({
    this.key,
    this.empty = false,
    this.displacement = 40.0,
    this.valueColor,
    this.backgroundColor,
    completeDuration = const Duration(seconds: 1),
    bool enableHapticFeedback = false,
    bool enableInfiniteLoad = true,
  }) : super(
          float: false,
          extent: empty ? 0.1 : 52.0,
          triggerDistance: empty ? 0.1 : 52.0,
          completeDuration: completeDuration == null ? Duration(milliseconds: 300) : completeDuration + Duration(milliseconds: 300),
          enableHapticFeedback: enableHapticFeedback,
          enableInfiniteLoad: enableInfiniteLoad,
        );

  @override
  Widget contentBuilder(
    BuildContext context,
    LoadMode loadState,
    double pulledExtent,
    double loadTriggerPullDistance,
    double loadIndicatorExtent,
    AxisDirection axisDirection,
    bool float,
    Duration completeDuration,
    bool enableInfiniteLoad,
    bool success,
    bool noMore,
  ) {
    if (empty) {
      return Container();
    }
    linkNotifier.contentBuilder(
      context,
      loadState,
      pulledExtent,
      loadTriggerPullDistance,
      loadIndicatorExtent,
      axisDirection,
      float,
      completeDuration,
      enableInfiniteLoad,
      success,
      noMore,
    );
    return MaterialFooterWidget(
      key: key,
      displacement: displacement,
      valueColor: valueColor,
      backgroundColor: backgroundColor,
      linkNotifier: linkNotifier,
      noMore: noMore,
    );
  }
}

class MaterialFooterWidget extends StatefulWidget {
  final double displacement;
  final Animation<Color> valueColor;
  final Color backgroundColor;
  final LinkFooterNotifier linkNotifier;
  final bool noMore;

  const MaterialFooterWidget({
    Key key,
    this.displacement,
    this.valueColor,
    this.backgroundColor,
    this.linkNotifier,
    this.noMore,
  }) : super(key: key);

  @override
  MaterialFooterWidgetState createState() {
    return MaterialFooterWidgetState();
  }
}

class MaterialFooterWidgetState extends State<MaterialFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.noMore
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '没有更多数据了',
                style: TextStyle(fontSize: getAdapterSize(14), color: Colours.title),
              )
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AzIcon(
                child: AzImage(
                  'assets/images/refresh/icon_loading_gray.png',
                  width: getAdapterSize(18),
                  height: getAdapterSize(18),
                ),
                spin: true,
                color: Colours.subTitle,
                size: getAdapterSize(18),
                duration: 1500,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '正在加载...',
                style: TextStyle(fontSize: getAdapterSize(14), color: Colours.title),
              )
            ],
          );
  }
}
