import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/components/custom_icon.dart';
import 'package:flutter_practices/shared/const/const.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/drawer_provider.dart';

class CustomNavigationRail extends StatelessWidget {
  const CustomNavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    DrawerProvider drawerProvider = Provider.of<DrawerProvider>(context);
    double width = MediaQuery.of(context).size.width;
    return NavigationRail(
      destinations: [
        NavigationRailDestination(
          icon: CustomIcon(
            icon: Icons.dashboard,
            width: width,
          ),
          label: Text(
            AppLocalizations.of(context)!.dashboard,
            textScaleFactor: navRailDestTextScale,
          ),
        ),
        NavigationRailDestination(
          icon: CustomIcon(
            icon: Icons.inventory,
            width: width,
          ),
          label: Text(
            AppLocalizations.of(context)!.stock,
            textScaleFactor: navRailDestTextScale,
          ),
        ),
      ],
      selectedIndex: drawerProvider.selectedIndex,
      onDestinationSelected: (index) {
        drawerProvider.destinationIndex(index);
        switch (index) {
          case 0:
            context.go("/");
            break;
          case 1:
            context.go("/stock");
            break;
          default:
            break;
        }
      },
      extended: width >= tabletWidth ? drawerProvider.isExtended : true,
    );
  }
}
