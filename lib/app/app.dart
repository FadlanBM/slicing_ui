import 'package:flutter/material.dart';
import 'package:slicing_ui/app/routes/app_router.dart';
import 'package:slicing_ui/app/routes/app_routes.dart';
import 'package:slicing_ui/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slicing UI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.initial,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
