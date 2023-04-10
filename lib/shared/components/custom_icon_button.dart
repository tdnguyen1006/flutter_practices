import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/const/const.dart';

class CustomIconBtn extends StatelessWidget {
  const CustomIconBtn({
    super.key,
    required this.icon,
    required this.width,
    required this.callback,
  });
  final Widget icon;
  final double width;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: width >= tabletWidth
          ? 24 * desktopTextScale
          : width >= mobileWidth && width < tabletWidth
              ? 24 * tabletTextScale
              : 24 * mobileTextScale,
      onPressed: callback,
    );
  }
}
