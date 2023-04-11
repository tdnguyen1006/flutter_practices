import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/components/custom_icon.dart';
import 'package:flutter_practices/shared/components/custom_icon_button.dart';
import 'package:flutter_practices/shared/components/custom_text.dart';
import 'package:flutter_practices/shared/const/const.dart';
import 'package:flutter_practices/shared/providers/drawer_provider.dart';
import 'package:flutter_practices/shared/providers/language_provider.dart';
import 'package:flutter_practices/shared/providers/theme_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    final DrawerProvider drawerProvider = Provider.of<DrawerProvider>(context);
    final LanguageProvider languageProvider =
        Provider.of<LanguageProvider>(context);
    double width = MediaQuery.of(context).size.width;
    final List<PopupMenuEntry> menuList = [
      PopupMenuItem(
        child: ListTile(
          leading: CustomIcon(
            icon: Icons.logout,
            width: width,
          ),
          title: CustomText(
            title: AppLocalizations.of(context)!.logout,
            width: width,
          ),
          onTap: () => context.go("/login"),
        ),
      ),
    ];

    return AppBar(
      title: CustomText(
        title: title,
        width: width,
      ),
      leading: width >= tabletWidth
          ? CustomIconBtn(
              width: width,
              callback: () {
                drawerProvider.toggleDrawer();
              },
              icon: const Icon(Icons.menu),
            )
          : null,
      actions: [
        CustomIconBtn(
          width: width,
          callback: () {
            themeProvider.changeTheme();
          },
          icon: themeProvider.isDark
              ? const Icon(Icons.light_mode)
              : const Icon(Icons.dark_mode),
        ),
        CustomIconBtn(
          width: width,
          callback: () {
            languageProvider.changeLanguage();
          },
          icon: languageProvider.isEn
              ? SvgPicture.asset("assets/svg/vn.svg")
              : SvgPicture.asset("assets/svg/us.svg"),
        ),
        PopupMenuButton(
          tooltip: "",
          itemBuilder: (context) => menuList,
          icon: const Icon(Icons.person),
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
