import 'package:flutter/material.dart';
import 'package:poultrycom/views/views.dart';

class RoutesUtils {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/HomeView':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/LoginView':
        return MaterialPageRoute(builder: (_) => const LoginView());
      case '/RegisterView':
        return MaterialPageRoute(builder: (_) => const RegisterView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
