import 'package:geolocator/geolocator.dart';

import '../../models/location_model.dart';
import 'i_location_service.dart';

class LocationService implements ILocationService {
  Location? location;
  @override
  Future<Location>? getCurrentLocationService() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      // Test if location services are enabled.
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }
      await Geolocator.getCurrentPosition();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      location = Location(position.latitude, position.longitude);

      return location!;
    } catch (e) {
      throw Exception();
    }
  }
}
