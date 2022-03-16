import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vector_math/vector_math_64.dart';

///Icon控件
class AzIcon extends StatefulWidget {
  const AzIcon({
    Key key,
    this.value,
    this.child,
    this.size,
    this.color,
    this.rotate,
    this.spin = false,
    this.duration = 1000,
    this.onTap,
  }) : super(key: key);

  final String value;
  final Widget child;
  final double size;
  final Color color;
  final double rotate;
  final bool spin;
  final int duration;
  final GestureTapCallback onTap;

  @override
  _AzIcon createState() => _AzIcon();
}

class _AzIcon extends State<AzIcon> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration),
    );
    if (widget.spin) {
      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reset();
          _controller.forward();
        }
      });
      _controller.forward();
    }
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final String value = widget.value;
    //inal double size = widget.size ?? ConstStyle.iconSize;
    Widget child;
    // if (value != null && value.startsWith('http')) {
    //   child = WitImage(value,
    //     width: size,
    //     height: size,
    //     fit: BoxFit.fill,
    //   );
    // } else {
    //   child = Icon(
    //     getIcon(name: value),
    //     size: size,
    //     color: widget.color ?? ConstStyle.iconColor,
    //   );
    // }

    if (widget.child != null) {
      child = widget.child;
    }

    if (widget.spin) {
      child = RotationTransition(
        turns: _controller,
        child: child,
      );
    } else if (widget.rotate != null) {
      child = Transform.rotate(
        angle: widget.rotate / radians2Degrees,
        child: child,
      );
    }
    return GestureDetector(
      onTap: widget.onTap,
      child: child,
    );
  }
}
