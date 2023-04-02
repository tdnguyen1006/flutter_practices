import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/const/const.dart';
import 'package:flutter_practices/shared/providers/drawer_provider.dart';
import 'package:flutter_practices/shared/providers/language_provider.dart';
import 'package:flutter_practices/shared/providers/theme_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    final DrawerProvider drawerProvider = Provider.of<DrawerProvider>(context);
    final LanguageProvider languageProvider =
        Provider.of<LanguageProvider>(context);
    double width = MediaQuery.of(context).size.width;

    return AppBar(
      title: Text(title),
      leading: width >= mobileWidth
          ? IconButton(
              onPressed: () {
                drawerProvider.toggleDrawer();
              },
              icon: const Icon(Icons.menu),
            )
          : null,
      actions: [
        IconButton(
          onPressed: () {
            themeProvider.changeTheme();
          },
          icon: themeProvider.isDark
              ? const Icon(Icons.light_mode)
              : const Icon(Icons.dark_mode),
        ),
        IconButton(
          onPressed: () {
            languageProvider.changeLanguage();
          },
          icon: languageProvider.isEn
              ? SvgPicture.asset("svg/vn.svg")
              : SvgPicture.asset("svg/us.svg"),
          iconSize: 15,
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
