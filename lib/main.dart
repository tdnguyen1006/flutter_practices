import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_practices/shared/providers/drawer_provider.dart';
import 'package:flutter_practices/shared/providers/language_provider.dart';
import 'package:flutter_practices/shared/providers/theme_provider.dart';
import 'package:flutter_practices/shared/theme/custom_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/Dashboard/screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider<LanguageProvider>(
          create: (context) => LanguageProvider(),
        ),
        ChangeNotifierProvider<DrawerProvider>(
          create: (context) => DrawerProvider(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Flutter Practices",
          locale: Provider.of<LanguageProvider>(context).isEn
              ? const Locale("en")
              : const Locale("vi"),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          theme: Provider.of<ThemeProvider>(context).isDark
              ? CustomTheme.darkTheme
              : CustomTheme.lightTheme,
          home: const DashboardPage(),
        );
      },
    );
  }
}
