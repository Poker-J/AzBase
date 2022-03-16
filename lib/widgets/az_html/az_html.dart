import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

///加载中页面
class AzHtml extends StatelessWidget {
  const AzHtml({Key key, this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Html(data: content);
  }
}
