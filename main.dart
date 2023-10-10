import 'package:flutter/material.dart';
import 'package:pelisapp/provaider/movies_provider.dart';
import 'package:pelisapp/routes/app_routes_screen.dart';
import 'package:pelisapp/theme/theme.dart';
import 'package:pelisapp/theme/themeActions.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatefulWidget {
  const AppState({super.key});

  @override
  State<AppState> createState() => AppStateState();
}

class AppStateState extends State<AppState> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(TemaApp.darkTheme),
      child: ChangerApp(),
    );
  }
}

class ChangerApp extends StatefulWidget {
  const ChangerApp({
    super.key,
  });

  @override
  State<ChangerApp> createState() => _ChangerAppState();
}

class _ChangerAppState extends State<ChangerApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MoviesProvaiders(),
      lazy: false,
      child: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeH = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelis App Flutter',
      initialRoute: AppRoute.inicialRoute,
      routes: AppRoute.getMenuRoutes(),
      onGenerateRoute: AppRoute.onGenerateRoute,
      theme: themeH.getTheme(),
      //themeH.getTheme()
    );
  }
}
