import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/const/const.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    this.icon,
    required this.width,
  });
  final IconData? icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: width >= tabletWidth
          ? 24 * desktopTextScale
          : width >= mobileWidth && width < tabletWidth
              ? 24 * tabletTextScale
              : 24 * mobileTextScale,
    );
  }
}
