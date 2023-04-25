import 'package:flutter/foundation.dart';

import '../services/services.dart';
import '../utils/utils.dart';

class RegisterViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  navigateToLogin() {
    _navigationService.navigateTo('/LoginView');
  }
}
