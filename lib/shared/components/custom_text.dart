import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/const/const.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title, required this.width});
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textScaleFactor: width >= tabletWidth
          ? desktopTextScale
          : width >= mobileWidth && width < tabletWidth
              ? tabletTextScale
              : mobileTextScale,
    );
  }
}
