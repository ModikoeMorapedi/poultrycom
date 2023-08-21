import 'package:flutter/material.dart';
import 'package:poultrycom/views/views.dart';

import '../widgets/widgets.dart';

class RoutesUtils {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/HomeView':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case '/LoginView':
        return MaterialPageRoute(builder: (_) => LoginView());
      case '/RegisterView':
        return MaterialPageRoute(builder: (_) => RegisterView());
      case '/BottomNavigationBarWidget':
        return MaterialPageRoute(
            builder: (_) => const BottomNavigationBarWidget());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
