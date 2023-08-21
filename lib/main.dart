import 'package:flutter/material.dart';
import 'package:poultrycom/services/services.dart';
import 'package:poultrycom/utils/utils.dart';
import 'package:poultrycom/view_models/login_view_model.dart';
import 'package:poultrycom/view_models/news_view_model.dart';
import 'package:poultrycom/view_models/store_view_model.dart';
import 'package:poultrycom/view_models/view_models.dart';
import 'package:poultrycom/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'views/views.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginViewModel>(create: (_) => LoginViewModel()),
        ChangeNotifierProvider<RegisterViewModel>(
            create: (_) => RegisterViewModel()),
        ChangeNotifierProvider<NewsViewModel>(create: (_) => NewsViewModel()),
        ChangeNotifierProvider<StoreViewModel>(create: (_) => StoreViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: LoginView(),
        onGenerateRoute: RoutesUtils.generateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
      ),
    );
  }
}
