import 'package:az_base/commons/configs/style.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

// import 'package:flutterimagetexture/flutter_image_texture_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

// 图片
class AzImage extends StatelessWidget {
  const AzImage(
    this.url, {
    Key key,
    this.height,
    this.width,
    this.margin = const EdgeInsets.all(0),
    this.round = false,
    this.radius,
    this.fit = BoxFit.cover,
    this.borderWidth = 0,
    this.borderColor = Colors.white,
    this.loding = '',
    this.error = 'https://lxq.nmgdj.gov.cn/oss/nmlxq/app/default-avatar/default-image.png',
    this.preview = false,
  }) : super(key: key);

  final String url;
  final double width;
  final double height;
  final EdgeInsets margin;
  final bool round;
  final double radius;
  final BoxFit fit;
  final double borderWidth;
  final Color borderColor;
  final String loding;
  final String error;
  final bool preview;

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = Container(color: Colours.text);
    // 网络图片
    if (url != null && url.startsWith('http')) {
      imageWidget = CachedNetworkImage(
        width: width,
        height: height,
        fit: fit,
        imageUrl: url,
        placeholder: (context, url) => Container(color: Colours.background),
        errorWidget: (context, url, _) {
          return CachedNetworkImage(imageUrl: error);
        },
        fadeOutDuration: Duration(milliseconds: 0),
        fadeInDuration: Duration(milliseconds: 0),
      );
      // imageWidget = Platform.isAndroid
      //     ? CachedNetworkImage(
      //         width: width,
      //         height: height,
      //         fit: fit,
      //         imageUrl: url,
      //         placeholder: (context, url) => Container(color: Colours.background),
      //         errorWidget: (context, url, _) {
      //           return CachedNetworkImage(imageUrl: error);
      //         },
      //       )
      //     : FittedBox(
      //         alignment: Alignment.center,
      //         child: FlutterImageTextureWidget(
      //           url: Uri.encodeFull(url),
      //           width: width,
      //           height: height,
      //           fallback: error,
      //         ),
      //         fit: fit,
      //       );
    } else if (url.contains(';base64,')) {
      imageWidget = Image.memory(convert.base64.decode(url.split(',')[1]), width: width, height: height, fit: fit, gaplessPlayback: true);
    } else if (url != null) {
      imageWidget = Image.asset(url, width: width, height: height, fit: fit);
    }

    Color _borderColor = borderColor;
    if (borderWidth == 0) {
      _borderColor = Colors.transparent;
    }
    double _radius;
    if (round) {
      _radius = height / 2;
    } else {
      _radius = radius ?? 0;
    }

    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(_radius)),
        border: Border.all(color: _borderColor, width: borderWidth),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_radius),
        child: imageWidget,
      ),
    );
  }
}
