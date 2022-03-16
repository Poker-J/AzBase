import 'package:az_base/widgets/az_image/az_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AzAvatar extends StatelessWidget {
  const AzAvatar(
      {Key key,
      this.imageUrl,
      this.defaultImageUrl = 'assets/images/avatar-male.png',
      this.defaultMaleImageUrl = 'assets/images/avatar-male.png',
      this.defaultGirlImageUrl = 'assets/images/avatar-girl.png',
      this.sex,
      this.cacheImage = true,
      this.size = 40.0,
      this.radius,
      this.borderWidth = 0.0,
      this.paddingWidth = 0.0,
      this.borderColor = Colors.transparent,
      this.paddingColor = Colors.transparent,
      this.backgroundColor = Colors.transparent,
      this.text = '',
      this.elevation = 0.0,
      this.showInitialText = false,
      this.showInitialTextAbovePicture = false,
      this.onTap,
      this.foregroundColor = Colors.transparent,
      // this.placeHolder,
      // this.errorWidget,
      // this.imageBuilder,
      this.useOldImageOnUrlChange})
      : super(key: key);

  final String imageUrl;
  final String defaultImageUrl;
  final String defaultMaleImageUrl;
  final String defaultGirlImageUrl;

  // 性别'1'为男、'0'为女
  final String sex;
  final bool cacheImage;
  final double size;
  final double radius;
  final double borderWidth;
  final double paddingWidth;
  final Color borderColor;
  final Color paddingColor;
  final Color backgroundColor;
  final Color foregroundColor;
  final double elevation;
  final String text;
  final bool showInitialText;
  final bool showInitialTextAbovePicture;
  final GestureTapCallback onTap;

  // final PlaceholderWidgetBuilder placeHolder;
  // final LoadingErrorWidgetBuilder errorWidget;
  // final ImageWidgetBuilder imageBuilder;
  final bool useOldImageOnUrlChange;

  @override
  Widget build(BuildContext context) {
    final _text = Center(child: Text(text));
    final _radius = radius ?? size;
    var _imageUrl = imageUrl;

    Widget _buildAssetsImage(String url) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(_radius),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
          ),
        ),
      );
    }

    Widget _profileImage() {
      if (_imageUrl == null || _imageUrl.isEmpty) {
        if ((sex != null || sex != '') && sex == '0') {
          if (!defaultGirlImageUrl.contains('http')) {
            return _buildAssetsImage(defaultGirlImageUrl);
          }
          _imageUrl = defaultGirlImageUrl;
        } else if ((sex != null || sex != '') && sex == '1') {
          if (!defaultMaleImageUrl.contains('http')) {
            return _buildAssetsImage(defaultMaleImageUrl);
          }
          _imageUrl = defaultMaleImageUrl;
        } else {
          if (!defaultImageUrl.contains('http')) {
            return _buildAssetsImage(defaultImageUrl);
          }
          _imageUrl = defaultImageUrl;
        }
      }
      return ClipRRect(
          borderRadius: BorderRadius.circular(_radius),
          child: AzImage(
            _imageUrl,
            fit: BoxFit.cover,
          ));
    }

    List<Widget> _buildWidgets() {
      if (showInitialText) {
        return [_buildText()];
      }
      if (showInitialTextAbovePicture) {
        return [
          _profileImage(),
          Container(
              decoration: BoxDecoration(
                  color: foregroundColor,
                  borderRadius: BorderRadius.circular(_radius))),
          _text,
        ];
      }
      return [_profileImage()];
    }

    return GestureDetector(
      onTap: onTap,
      child: Material(
        type: MaterialType.circle,
        elevation: elevation,
        color: borderColor,
        child: Container(
          height: size,
          width: size,
          padding: EdgeInsets.all(borderWidth),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_radius),
          ),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(paddingWidth),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_radius),
              color: paddingColor,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(_radius)),
              child: Stack(
                fit: StackFit.expand,
                children: _buildWidgets(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    String value = text;
    double fontSize = size * 0.4;
    if (RegExp(r'(^[a-zA-Z ]+$)').hasMatch(value)) {
      if (value.contains(' ')) {
        value = value.split(' ')[0];
      }
      if (value.length == 1) {
        fontSize = size / value.length / 1.5;
      } else if (value.length == 2) {
        fontSize = size / value.length * 1.1;
      } else {
        final length = value.length <= 5 ? value.length : 5;
        value = value.substring(0, length - 1);
        fontSize = size / length * 1.4;
      }
    } else {
      if (value.length == 3) {
        value = value.substring(1, 3);
      } else if (value.length > 3) {
        value = value.substring(0, 2);
      }
      fontSize = size / value.length / 1.6;
      if (value.length == 1) {
        fontSize = size / value.length / 2;
      }
    }
    return Center(
      child: Text(
        value,
        style: TextStyle(
            color: backgroundColor.computeLuminance() > 0.7
                ? Colors.black
                : Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w500),
        softWrap: false,
      ),
    );
  }
}
