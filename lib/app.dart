import 'package:flutter/material.dart';
import 'package:myapp/core/services/theme_provider.dart';
import 'package:myapp/core/themes/dark_theme.dart';
import 'package:myapp/core/themes/light_theme.dart';
import 'package:provider/provider.dart';
import 'core/navigation/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            theme: lightTheme(),
            darkTheme: darkTheme(),
            themeMode: themeProvider.themeMode,
          );
        },
      ),
    );
  }
}
