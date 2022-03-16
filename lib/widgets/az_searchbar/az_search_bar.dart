import 'package:az_base/commons/configs/iconfont.dart';
import 'package:az_base/commons/configs/style.dart';
import 'package:az_base/utils/debouncer_utils.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

/// 输入框AppBar
class AzSearchBar extends StatefulWidget  {

  @override
  _AzSearchBarState createState() => _AzSearchBarState();

  const AzSearchBar({
    Key key,
    this.controller,
    this.focusNode,
    this.textStyle,
    this.hintStyle,
    this.hintText,
    this.searchIconColor,
    this.searchIconSize,
    this.margin,
    this.padding,
    this.enabled = true,
    this.autofocus = false,
    this.height,
    this.onSubmitted,
    this.onChange
  }) : super(key: key);
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextStyle hintStyle;
  final TextStyle textStyle;
  final String hintText;
  final String searchIconColor;
  final double searchIconSize;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final bool enabled;
  final bool autofocus;
  final double height;
  final Function onSubmitted;
  final Function onChange;

}

class _AzSearchBarState extends State<AzSearchBar>{

  bool _showClearBtn = false;
  final debUtils = DebouncerUtils(milliseconds: 500);

  @override
  void initState() {
    widget.controller?.addListener(() {
      setState(() {
        _showClearBtn = widget.controller.text.isNotEmpty;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Container(
        height: widget.height ?? getAdapterSize(34),
        margin: widget.margin,
        padding: widget.padding,
        decoration: BoxDecoration(
          color: Colours.background,
          borderRadius: BorderRadius.circular(getAdapterSize(4)),
        ),
        child: Row(
          children: [
            IconFont(
              IconNames.lxq_search,
              size: widget.searchIconSize ?? getAdapterSize(14),
              color:  widget.searchIconColor ?? '#a6a7a8',
            ),
            SizedBox(width: getAdapterSize(10)),
            Expanded(
              child: TextField(
                controller: widget.controller,
                focusNode: widget.focusNode,
                style: widget.textStyle ?? TextStyle(
                    fontSize: getAdapterSize(14),
                    color: Colours.title
                ),
                autofocus: widget.autofocus,
                enabled: widget.enabled,
                textInputAction: TextInputAction.search,
                onChanged:(inputText){
                  debUtils.run(() {
                    widget.onChange();
                  });
                } ,
                decoration: InputDecoration(
                  hintText: widget.hintText ?? '输入关键字搜索',
                  hintStyle: widget.hintStyle ?? TextStyle(
                      fontSize: getAdapterSize(14),
                      color: Colours.text
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                ),
                onSubmitted: (inputText){
                  widget.onSubmitted();
                },
              ),
            ),
            if (_showClearBtn)
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  widget.controller?.clear();
                },
                child:Align(
                  alignment: Alignment.centerRight,
                  widthFactor: 1,
                  child: Icon(Icons.cancel, color: Colours.tip, size: getAdapterSize(16)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
