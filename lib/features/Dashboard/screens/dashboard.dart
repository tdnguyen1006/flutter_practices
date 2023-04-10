import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/components/custom_appBar.dart';
import 'package:flutter_practices/shared/components/custom_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_practices/shared/components/custom_navigation_rail.dart';
import 'package:flutter_practices/shared/components/custom_text.dart';
import 'package:flutter_practices/shared/const/const.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: width >= tabletWidth ? null : const CustomDrawer(),
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.dashboard,
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
                    title: AppLocalizations.of(context)!.example,
                    width: width,
                  ),
                  CustomText(
                    title: '$_counter',
                    width: width,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
