import 'package:flutter/material.dart';
import 'package:flutter_application_2077/components/rootnavigationbar.dart';
import 'package:flutter_application_2077/components/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const RootNavigationBar(),
    );
  }
}
