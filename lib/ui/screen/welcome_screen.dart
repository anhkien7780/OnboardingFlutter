import 'dart:math';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: StandardScreen(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.fromLTRB(11, 26, 11, 26),
                child: Image.asset(
                  "/Users/admin/AndroidStudioProjects/onboarding/lib/images/work_from_home.png",
                  width: 363,
                  height: 370,
                ),
              ),
              const SizedBox(height: 47),
              SizedBox(
                width: 343,
                child: Column(
                  spacing: 23,
                  children: [
                    Text(
                      "Discover Your Dream Job here",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                        color: colors.primary,
                      ),
                    ),
                    Text(
                      "Explore all the existing job roles based on your interest and study major",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 88),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(160, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
