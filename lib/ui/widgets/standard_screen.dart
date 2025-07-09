
import 'dart:math';
import 'package:flutter/material.dart';
import 'custom_shape.dart';

class StandardScreen extends StatelessWidget {
  final Widget? child;

  const StandardScreen({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
        CustomShape(
        sized: (496, 496),
    borderWidth: 3,
    color: Colors.transparent,
    shape: BoxShape.circle,
    borderColor: Color(0xffF8F9FF),
    position: (top: -142, left: 57, right: null, bottom: null),
    ),
    CustomShape(
    sized: (635, 635),
    color: Color(0xffF8F9FF),
    shape: BoxShape.circle,
    position: (top: -327, left: 148, right: null, bottom: null),
    ),
    CustomShape(
    sized: (372, 372),
    color: Colors.transparent,
    shape: BoxShape.rectangle,
    position: (top: 689.3, left: -258.7, right: null, bottom: null),
    borderWidth: 2,
    borderColor: Color(0xffF1F4FF),
    transform: Matrix4.rotationZ(-27.09 * pi / 180),
    ),
    CustomShape(
    sized: (372, 372),
    color: Colors.transparent,
    shape: BoxShape.rectangle,
    position: (top: 684.3, left: -264.7, right: null, bottom: null),
    borderColor: Color(0xffF1F4FF),
    borderWidth: 2,
    ),
    ?child,
    ],
    );
  }
}