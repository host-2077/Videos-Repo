import 'package:flutter/material.dart';
import 'package:flutter_application_2077/components/rootnavigationbar.dart';
import 'package:flutter_application_2077/components/theme.dart';
import 'package:flutter_application_2077/components/theme_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        home: const RootNavigationBar(),
      );
    });
  }
}
