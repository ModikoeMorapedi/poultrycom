import 'package:poultrycom/models/location_model.dart';

abstract class ILocationService {
  Future<Location>? getCurrentLocationService();
}
