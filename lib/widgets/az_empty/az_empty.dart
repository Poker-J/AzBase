import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/widgets/az_button/az_button.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

///空布局组件
class AzEmpty extends StatelessWidget {
  const AzEmpty({
    Key key,
    this.mode = EmptyEnum.data,
    this.size = SizeEnum.big,
    this.text = '暂无数据',
    this.btnText = '点击刷新',
    this.onTap,
  }) : super(key: key);

  final EmptyEnum mode;
  final SizeEnum size;
  final String text;
  final Function onTap;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    String image = getImageUrl(mode);
    double imageWidth;
    double imageHeight;
    double fontSize;

    switch (size) {
      case SizeEnum.small:
        imageWidth = getAdapterSize(80);
        imageHeight = getAdapterSize(80);
        fontSize = getAdapterSize(10);
        break;
      case SizeEnum.middle:
        imageWidth = getAdapterSize(120);
        imageHeight = getAdapterSize(120);
        fontSize = getAdapterSize(14);
        break;
      case SizeEnum.big:
        imageWidth = getAdapterSize(180);
        imageHeight = getAdapterSize(180);
        fontSize = getAdapterSize(16);
        break;
      case SizeEnum.other:
        break;
    }

    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, width: imageWidth, height: imageHeight),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colours.text, fontSize: fontSize),
          ),
          onTap == null
              ? SizedBox()
              : SizedBox(
                  height: getAdapterSize(20),
                ),
          onTap == null
              ? SizedBox()
              : AzButton(
                  onTap: onTap,
                  size: SizeEnum.other,
                  value: btnText,
                  width: getAdapterSize(90),
                  height: getAdapterSize(34),
                  radius: getAdapterSize(4),
                  fontSize: getAdapterSize(13),
                ),
          onTap == null
              ? SizedBox()
              : SizedBox(
                  height: getAdapterSize(30),
                ),
        ],
      ),
    );
  }

  //根据空布局类型获取对应的图片
  String getImageUrl(mode) {
    String image;
    switch (mode) {
      case EmptyEnum.address:
        image = 'assets/images/empty/address.png';
        break;
      case EmptyEnum.search:
        image = 'assets/images/empty/search.png';
        break;
      case EmptyEnum.coupon:
        image = 'assets/images/empty/coupon.png';
        break;
      case EmptyEnum.history:
        image = 'assets/images/empty/history.png';
        break;
      case EmptyEnum.comment:
        image = 'assets/images/empty/comment.png';
        break;
      case EmptyEnum.data:
        image = 'assets/images/empty/data.png';
        break;
      case EmptyEnum.message:
        image = 'assets/images/empty/message.png';
        break;
      case EmptyEnum.chat:
        image = 'assets/images/empty/chat.png';
        break;
      case EmptyEnum.news:
        image = 'assets/images/empty/news.png';
        break;
      case EmptyEnum.permission:
        image = 'assets/images/empty/permission.png';
        break;
      case EmptyEnum.favor:
        image = 'assets/images/empty/favor.png';
        break;
      case EmptyEnum.order:
        image = 'assets/images/empty/order.png';
        break;
      case EmptyEnum.wifi:
        image = 'assets/images/empty/wifi.png';
        break;
      case EmptyEnum.page:
        image = 'assets/images/empty/page.png';
        break;
      case EmptyEnum.car:
        image = 'assets/images/empty/car.png';
        break;
      case EmptyEnum.pic:
        image = 'assets/images/empty/pic.png';
        break;
      case EmptyEnum.timeOut:
        image = 'assets/images/empty/wifi.png';
        break;
    }
    return image;
  }
}

///model常量
enum EmptyEnum { search, coupon, history, comment, data, message, chat, news, permission, favor, order, wifi, address, page, car, pic, timeOut }
