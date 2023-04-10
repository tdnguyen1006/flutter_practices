import 'package:flutter/material.dart';

import 'custom_navigation_rail.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: CustomNavigationRail(),
    );
  }
}
