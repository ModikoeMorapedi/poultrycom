import 'package:get_it/get_it.dart';
import 'package:poultrycom/services/news/i_news_service.dart';
import 'package:poultrycom/services/services.dart';
import 'package:poultrycom/services/weather/i_weather_service.dart';
import 'package:poultrycom/services/weather/weather_service.dart';
import 'package:poultrycom/view_models/view_models.dart';

final locator = GetIt.instance;

void setupLocator() {
  //Services
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<INewsService>(() => NewsService());
  locator.registerLazySingleton<IWeatherService>(() => WeatherService());

  //View Models
  locator.registerFactory<LoginViewModel>(() => LoginViewModel());
}
