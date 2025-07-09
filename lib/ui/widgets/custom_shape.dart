
import 'package:flutter/material.dart';

typedef Position = ({double? top, double? bottom, double? left, double? right});
class CustomShape extends StatelessWidget {
  final Position? position;
  final (double width, double height) sized;
  final BoxShape shape;
  final Color color;
  final double borderWidth;
  final Color borderColor;
  final Matrix4? transform;

  const CustomShape({
    super.key,
    required this.sized,
    required this.color,
    this.position,
    this.shape = BoxShape.rectangle,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    this.transform,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: position?.top,
      bottom: position?.bottom,
      left: position?.left,
      right: position?.right,
      child: Transform(
        transform: transform ?? Matrix4.identity(),
        alignment: Alignment.center,
        child: Container(
          width: sized.$1,
          height: sized.$2,
          decoration: BoxDecoration(
            color: color,
            shape: shape,
            border: Border.all(width: borderWidth, color: borderColor),
          ),
        ),
      ),
    );
  }
}