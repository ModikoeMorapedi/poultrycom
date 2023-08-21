// Consuming the Current weather and forcast services, using the BaseService
import 'package:poultrycom/services/weather/i_weather_service.dart';

import '../../models/forecast_model.dart';
import '../../models/location_model.dart';
import '../../models/weather_model.dart';
import '../../utils/constants.dart';
import '../base_service.dart';

class WeatherService extends BaseService implements IWeatherService {
  //Current weather service, passing Location Model as a paramettr
  @override
  Future<WeatherModel>? getCurrentWeatherService(Location location) async {
    var response = await getAsync(currentWeatherApi);
    return WeatherModel.fromJson(response);
  }

  //Forcast weather service, using Location class to get latitude and longtitide
  @override
  Future<ForecastModel>? getWeatherForecastService(Location? location) async {
    var response = await getAsync(weatherForecastApi);
    return ForecastModel.fromJson(response);
  }
}
