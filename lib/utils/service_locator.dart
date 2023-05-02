import 'package:get_it/get_it.dart';
import 'package:poultrycom/services/services.dart';
import 'package:poultrycom/view_models/view_models.dart';

final locator = GetIt.instance;

void setupLocator() {
  //Services
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<NewsService>(() => NewsService());

  //View Models
  locator.registerFactory<LoginViewModel>(() => LoginViewModel());
}
