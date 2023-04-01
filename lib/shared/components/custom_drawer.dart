import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_practices/shared/const/const.dart';
import 'package:flutter_practices/shared/providers/drawer_provider.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    DrawerProvider drawerProvider = Provider.of<DrawerProvider>(context);
    double width = MediaQuery.of(context).size.width;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: width >= mobileWidth
                  ? drawerProvider.isOpen
                      ? Text(AppLocalizations.of(context)!.dashboard)
                      : const Text("")
                  : Text(AppLocalizations.of(context)!.dashboard),
            ),
          ],
        ),
      ),
    );
  }
}
