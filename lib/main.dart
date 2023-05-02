import 'package:flutter/material.dart';
import 'package:poultrycom/services/services.dart';
import 'package:poultrycom/utils/utils.dart';
import 'package:poultrycom/view_models/login_view_model.dart';
import 'package:poultrycom/view_models/news_view_model.dart';
import 'package:poultrycom/view_models/view_models.dart';
import 'package:poultrycom/widgets/widgets.dart';
import 'package:provider/provider.dart';

import 'views/views.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<LoginViewModel>(
              create: (_) => LoginViewModel()),
          ChangeNotifierProvider<RegisterViewModel>(
              create: (_) => RegisterViewModel()),
          ChangeNotifierProvider<NewsViewModel>(create: (_) => NewsViewModel()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: const LoginView(),
          onGenerateRoute: RoutesUtils.generateRoute,
          navigatorKey: locator<NavigationService>().navigatorKey,
        ));
  }
}
