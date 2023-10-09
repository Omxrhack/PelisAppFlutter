import 'package:flutter/material.dart';
import 'package:pelisapp/models/menu_options.dart';
import 'package:pelisapp/screens/screens.dart';

class AppRoute {
  static const inicialRoute = 'home';
  static final menuOptions = <MenuOptions>{
    MenuOptions(
      route: 'HomeScreen',
      title: 'HomeScreen',
      screen: const HomeScreen(),
      icon: Icons.list,
    ),
    MenuOptions(
      route: 'DetailScreen',
      title: 'DetailsScreen',
      screen: const DetailsScreen(),
      icon: Icons.list,
    ),
  };

  static Map<String, Widget Function(BuildContext)> getMenuRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}
