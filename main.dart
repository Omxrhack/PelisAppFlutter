import 'package:flutter/material.dart';
import 'package:pelisapp/routes/app_routes_screen.dart';
import 'package:pelisapp/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelis App Flutter',
      initialRoute: AppRoute.inicialRoute,
      routes: AppRoute.getMenuRoutes(),
      onGenerateRoute: AppRoute.onGenerateRoute,
      theme: TemaApp.darkTheme,
    );
  }
}
