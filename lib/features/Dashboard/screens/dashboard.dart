import 'package:flutter/material.dart';
import 'package:flutter_practices/shared/components/custom_appBar.dart';
import 'package:flutter_practices/shared/components/custom_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_practices/shared/const/const.dart';
import 'package:flutter_practices/shared/providers/drawer_provider.dart';
import 'package:provider/provider.dart';

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
    DrawerProvider drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      drawer: width >= mobileWidth ? null : const CustomDrawer(),
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.dashboard,
      ),
      body: Row(
        children: [
          width >= mobileWidth
              ? AnimatedContainer(
                  width: drawerProvider.isOpen
                      ? drawerDefaultWidth
                      : drawerMiniWidth,
                  duration: const Duration(milliseconds: fastAnimationDuration),
                  child: const CustomDrawer(),
                )
              : const SizedBox(),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context)!.example,
                  ),
                  Text(
                    '$_counter',
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
