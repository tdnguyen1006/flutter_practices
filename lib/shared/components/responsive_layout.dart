import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/const/const.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileWidget,
    this.tabletWidget,
    this.desktopWidget,
  });

  final Widget mobileWidget;
  final Widget? tabletWidget;
  final Widget? desktopWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < mobileWidth) {
        return mobileWidget;
      } else if (constraint.maxWidth >= mobileWidth &&
          constraint.maxWidth < tabletWidth) {
        return tabletWidget ?? mobileWidget;
      } else {
        return desktopWidget ?? mobileWidget;
      }
    });
  }
}
