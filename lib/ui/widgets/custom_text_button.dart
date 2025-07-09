
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String imageUri;

  const CustomTextButton({
    super.key,
    required this.imageUri,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) =>
      IconButton(onPressed: onPressed, icon: Image.asset(imageUri));
}