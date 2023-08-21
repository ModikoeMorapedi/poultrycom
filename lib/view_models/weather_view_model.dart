import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:poultrycom/services/weather/i_weather_service.dart';
import 'package:poultrycom/utils/service_locator.dart';

import '../models/forecast_model.dart';
import '../models/weather_model.dart';
import '../services/location/i_location_service.dart';

class WeatherViewModel extends ChangeNotifier {
  final _weatherService = locator<IWeatherService>();
  final _locationService = locator<ILocationService>();

  WeatherModel? _weatherModel;
  ForecastModel? _forecastModel;

  WeatherModel? get weatherModel => _weatherModel;
  ForecastModel? get forecastModel => _forecastModel;

  geCurrentWeather() async {
    try {
      final loactionResponse =
          await _locationService.getCurrentLocationService();
      if (loactionResponse != null) {
        final currentWeatherResponse =
            await _weatherService.getCurrentWeatherService(loactionResponse);
        final weatherForecastResponse =
            await _weatherService.getWeatherForecastService(loactionResponse);
        if (currentWeatherResponse != null && weatherForecastResponse != null) {
          _weatherModel = currentWeatherResponse;
          _forecastModel = weatherForecastResponse;
        }
      }
    } catch (e) {
      print("object $e");
    }
  }
}
