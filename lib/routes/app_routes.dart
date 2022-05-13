import 'package:flutter/material.dart';

import 'package:flutter_crypto_daily_reporter/routes/routes.dart';
import 'package:flutter_crypto_daily_reporter/screens/screens.dart';

class AppRoutes {
  // Initial screen
  static const initialRoute = 'home';

  // Route models - App routes
  static final menuRoutes = <RouteModel>[
    RouteModel(
        name: 'Home Screen',
        route: 'home',
        screen: const HomeScreen(),
        icon: Icons.home),
    RouteModel(
        name: 'News Screen',
        route: 'news',
        screen: const NewsScreen(),
        icon: Icons.home),
    RouteModel(
        name: 'Market Screen',
        route: 'market',
        screen: const MarketScreen(),
        icon: Icons.list_alt),
    RouteModel(
        name: 'Portfolio Screen',
        route: 'portfolio',
        screen: const PortfolioScreen(),
        icon: Icons.light_mode),
  ];

  // Get App routes
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> getAppRoutes = {};

    for (final route in menuRoutes) {
      getAppRoutes
          .addAll({route.route: (BuildContext context) => route.screen});
    }

    return getAppRoutes;
  }

  static Route<dynamic>? onGenerateDefaultRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const NewsScreen(),
    );
  }
}
