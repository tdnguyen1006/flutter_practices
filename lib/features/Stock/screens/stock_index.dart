import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/components/custom_navigation_rail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../shared/components/custom_appBar.dart';
import '../../../shared/components/custom_drawer.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/const/const.dart';

class StockIndexPage extends StatelessWidget {
  const StockIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: width >= tabletWidth ? null : const CustomDrawer(),
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.stock,
      ),
      body: Row(
        children: [
          if (width >= tabletWidth) const CustomNavigationRail(),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomText(
                    title: "Stock Index",
                    width: width,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
