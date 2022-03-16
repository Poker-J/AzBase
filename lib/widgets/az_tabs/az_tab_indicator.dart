import 'package:flutter/material.dart';

class AzTabIndicator extends Decoration {
  const AzTabIndicator({
    this.color = Colors.white,
    this.height = 2.6,
    this.width = 18,
    this.bottom = 7,
    this.pad = 0,
  });

  final Color color;
  final double height;
  final double width;
  final double bottom;
  final double pad;

  @override
  BoxPainter createBoxPainter([Function onChanged]) => _CustomPainter(color, height, width, bottom,pad, onChanged);
}

class _CustomPainter extends BoxPainter {

  _CustomPainter(this.color, this.height, this.width, this.bottom,this.pad, VoidCallback onChanged) : super(onChanged);

  final Color color;
  final double height;
  final double width;
  final double bottom;
  final double pad;
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    final indicatorHeight = height;
    final padding = (configuration.size.width - width) / 2 - pad;
    final rect = Offset(offset.dx + padding, configuration.size.height - indicatorHeight - bottom) & Size(width, indicatorHeight);
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(height)), paint);
  }
}
