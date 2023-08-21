import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:poultrycom/services/services.dart';
import 'package:poultrycom/utils/utils.dart';

class LoginViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  login(String email, String password) async {
    try {
      final user = (await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      if (user != null) {
        _navigationService.navigateTo('/BottomNavigationBarWidget');
      } else {
        _navigationService.navigateTo('/RegisterView');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else {
        return e.message;
      }
    } catch (e) {
      _navigationService.navigateTo('/RegisterView');
    }
  }

  navigateToRegister() {
    _navigationService.navigateTo('/RegisterView');
  }
}
