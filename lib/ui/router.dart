import 'package:flutter/material.dart';
import 'package:wallafind/ui/splash/splash_page.dart';

abstract class CustomRouter {
  static const String splash = "/splash";
 

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    String route = settings.name ?? "";
    if (route.isEmpty) return null;
    Uri uri = Uri.parse(route);
    route = uri.path;
    Widget routeWidget;
    switch (route) {
      case splash:
        routeWidget = const SplashPage();
        break;
      default:
        return null;
    }
    return PageRouteBuilder(
      transitionDuration: Duration.zero,
      settings: settings,
      pageBuilder: (_, __, ___) => routeWidget,
      transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
    );
  }
  
}
