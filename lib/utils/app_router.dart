
import 'package:flutter/material.dart';
import 'package:new_project/views/home_view.dart';

import 'constants.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      

      case AppConstants.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
    }
  }
}
