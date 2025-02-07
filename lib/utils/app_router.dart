import 'package:flutter/material.dart';
import 'package:new_project/models/bid_model.dart';
import 'package:new_project/views/details_view.dart';
import 'package:new_project/views/home_view.dart';

import 'constants.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppConstants.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case AppConstants.detailsView:
        final bidModel = routeSettings.arguments as BidModel;
        return MaterialPageRoute(
          builder: (context) =>   DetailsView(bid: bidModel,),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
    }
  }
}
