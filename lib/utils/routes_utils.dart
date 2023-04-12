import 'package:flutter/material.dart';
import 'package:poultrycom/views/home_view.dart';
import 'package:poultrycom/views/login_view.dart';

class RoutesUtils {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/HomeView':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/LoginView':
        return MaterialPageRoute(builder: (_) => const LoginView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
