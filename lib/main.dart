
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/calculation_provider.dart';
import 'provider/theme_provider.dart';
import 'views/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(builder: (context, provider, child) {
      return MaterialApp(
        title: 'Calculator App',
        theme: provider.getTheme(),
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierProvider(
          create: (context) => CalculationProvider(),
          child: const HomePage(),
        ),
      );
    });
  }
}
