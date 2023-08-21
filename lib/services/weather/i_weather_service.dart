import '../../models/forecast_model.dart';
import '../../models/location_model.dart';
import '../../models/weather_model.dart';

abstract class IWeatherService {
  Future<WeatherModel>? getCurrentWeatherService(Location location);
  Future<ForecastModel>? getWeatherForecastService(Location location);
}
