import 'package:az_base/commons/configs/iconfont.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../index.dart';

/// 图片预览组件
class AzImagePreviewPage extends StatefulWidget {
  const AzImagePreviewPage({
    Key key,
    this.current = 0,
    this.urls,
    this.scrollDirection = Axis.horizontal,
  }) : super(key: key);

  final dynamic current;
  final List<String> urls;
  final Axis scrollDirection;

  @override
  _AzImagePreviewPageState createState() => _AzImagePreviewPageState();
}

class _AzImagePreviewPageState extends State<AzImagePreviewPage> {
  var currentIndex = 0; //默认位置
  PageController pageController;

  @override
  void initState() {
    super.initState();
    if (widget.current.runtimeType == String) {
      if (widget.current.toString().startsWith('http')) {
        final index = widget.urls.indexWhere((item) => item == widget.current);
        currentIndex = index != -1 ? index : 0;
      } else {
        currentIndex = int.parse(widget.current);
      }
    } else {
      currentIndex = widget.current;
    }
    currentIndex = currentIndex < widget.urls.length ? currentIndex : widget.urls.length - 1;
    pageController = PageController(initialPage: currentIndex);
  }

  //滑动改变
  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          children: <Widget>[
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: _buildItem,
              itemCount: widget.urls.length,
              // loadingBuilder: widget.loadingBuilder,
              backgroundDecoration: BoxDecoration(
                color: Colors.black,
              ),
              pageController: pageController,
              onPageChanged: onPageChanged,
              scrollDirection: widget.scrollDirection,
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(getAdapterSize(20)),
                  child: Text(
                    '${currentIndex + 1} / ${widget.urls.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getAdapterSize(14),
                      decoration: null,
                    ),
                  ),
                )),
            Positioned(
                top: Const.statusBarHeight,
                left: getAdapterSize(0),
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: getAdapterSize(10)),
                    width: getAdapterSize(40),
                    height: getAdapterSize(40),
                    child: IconFont(
                      IconNames.lxq_arrow_left,
                      color: '#ffffff',
                      size: getAdapterSize(20),
                    ),
                  ),
                  onTap: () => Navigator.of(context).pop(),
                ))
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final item = widget.urls[index];
    return PhotoViewGalleryPageOptions(
      imageProvider: NetworkImage(item),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
      maxScale: PhotoViewComputedScale.covered * 4.1,
      heroAttributes: PhotoViewHeroAttributes(tag: item),
    );
  }
}
