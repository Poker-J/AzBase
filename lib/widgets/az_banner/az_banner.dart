import 'package:az_base/widgets/az_image/az_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_tv/flutter_swiper.dart';

import '../../index.dart';
import '../index.dart';
import 'banner_model.dart';

// 轮播图

class AzBanner extends StatelessWidget {
  AzBanner({
    Key key,
    this.list,
    this.child,
    this.customBanner,
    this.width,
    this.height,
    this.margin,
    this.autoplay,
    this.duration,
    this.autoplayDelay,
    this.showTitle,
    this.onTap,
    this.jump,
    this.showPagination,
    this.radius,
    this.controller,
    this.onIndexChanged,
  }) : super(key: key);

  List<BannerModel> list;
  final List<Widget> customBanner;
  final Widget child;
  EdgeInsets margin;
  double width;
  double height;
  bool autoplay;
  int duration;
  int autoplayDelay;
  bool showTitle;
  final Function onTap;
  final Function jump;
  int customBannerLength;
  final Function onIndexChanged;
  bool showPagination;
  double radius;
  SwiperController controller;

  @override
  Widget build(BuildContext context) {
    //判断值
    margin = margin ?? EdgeInsets.fromLTRB(getAdapterSize(15), 0, getAdapterSize(15), 0);
    width = width ?? Const.screenWidth;
    radius = radius ?? getAdapterSize(5);
    height = height ?? Const.bannerHeight;
    showPagination = showPagination ?? true;
    autoplay = autoplay ?? true;
    showTitle = showTitle ?? false;
    duration = duration ?? 1000;
    autoplayDelay = autoplayDelay ?? 3000;
    customBannerLength = customBanner == null ? 0 : customBanner.length;
    return ConstrainedBox(
      constraints: BoxConstraints.loose(Size(width, height)),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: _buildSwiper(),
      ),
    );
  }

  //轮播图
  Widget _buildSwiper() {
    return Swiper(
      controller: controller,
      autoplay: autoplay,
      duration: duration,
      autoplayDelay: autoplayDelay,
      onTap: (index) {
        final bannerIndex = index - customBannerLength;
        if (onTap != null) {
          onTap(bannerIndex);
        } else if (list[bannerIndex].link.isNotEmpty) {
          jump(list[bannerIndex].link);
        }
      },
      onIndexChanged: onIndexChanged,
      itemBuilder: (context, index) {
        if (index < customBannerLength) {
          return customBanner[index];
        } else {
          return _buildBottomTextBanner(index - customBannerLength);
        }
      },
      itemCount: customBannerLength + list.length,
      viewportFraction: 1,
      scale: 0.9,
      pagination: SwiperPagination(
        alignment: showTitle ? Alignment.bottomRight : Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: getAdapterSize(5), right: getAdapterSize(23)),
        builder: DotSwiperPaginationBuilder(
          color: showPagination ? HexColor('#66ffffff') : Colors.transparent,
          activeColor: showPagination ? HexColor('#ffffff') : Colors.transparent,
          space: getAdapterSize(2.5),
          size: getAdapterSize(5),
          activeSize: getAdapterSize(6),
        ),
      ),
    );
  }

  //图片
  Widget _buildBottomTextBanner(index) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: Stack(
        children: [
          AzImage(
            list[index].url,
            fit: BoxFit.cover,
            width: width,
            height: height,
            radius: radius,
          ),
          showTitle && list[index].title != ''
              ? Positioned(
                  bottom: 0.0,
                  child: Container(
                    width: width - getAdapterSize(30),
                    padding: EdgeInsets.only(
                      left: getAdapterSize(15),
                      right: getAdapterSize(15),
                      bottom: getAdapterSize(12),
                      top: getAdapterSize(15),
                    ),
                    child: Text(
                      list[index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: getAdapterSize(14),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [HexColor('#00000000'), HexColor('#66000000')],
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
