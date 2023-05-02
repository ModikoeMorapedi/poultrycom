import 'package:flutter/foundation.dart';
import 'package:poultrycom/services/services.dart';
import 'package:poultrycom/utils/utils.dart';

class LoginViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  navigateToHome() {
    _navigationService.navigateTo('/BottomNavigationBarWidget');
  }

  navigateToRegister() {
    _navigationService.navigateTo('/RegisterView');
  }
}
