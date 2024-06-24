import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yajurveda_app/Provider/main_provider.dart';
import 'package:yajurveda_app/Utils/Theme/dark_theme.dart';
import 'package:yajurveda_app/Utils/Theme/theme_provider.dart';
import 'package:yajurveda_app/Utils/nav_bar.dart';

import 'Utils/Theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(create: (context) => VedaProvider(),),
      ],
      builder: (context, child) => MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: Provider.of<ThemeProvider>(context, listen: true).isDarkMode
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const NavBar(),
      ),
    );
  }
}

bool isDark = true;
