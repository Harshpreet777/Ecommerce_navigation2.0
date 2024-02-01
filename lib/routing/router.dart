import 'package:flutter/material.dart';
import 'package:navigation_2_demo/routing/routes.dart';
import 'package:navigation_2_demo/screens/details_screen.dart';
import 'package:navigation_2_demo/screens/home_screen.dart';
import 'package:navigation_2_demo/screens/search_screen.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.searchRoute:
        return pageRoute(
          const SearchScreenClass(), settings,
          //  Variables.name,
          // Variables.price
        );
      case Routes.detailsRoute:
        return pageRoute(
          const DetailsScreenClass(), settings,
          // Variables.name,
          // Variables.price
        );
      case Routes.homeRoute:
        return pageRoute(
          const HomeScreenClass(),
          settings,
          // Variables.name,
          // Variables.price,
        );
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Text('This Page does not Exist'),
                ));
    }
  }

  static pageRoute(Widget child, RouteSettings settings) {
    return FadeRoute(
      child: child,
      routeName: settings.name,
      arguments: settings.arguments,
      // name: name,
      // price: price,
      // image: image,
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;
  

  FadeRoute(
      {this.child,
      this.routeName,
      this.arguments,
      })
      : super(
          settings: RouteSettings(name: routeName, arguments: arguments),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
