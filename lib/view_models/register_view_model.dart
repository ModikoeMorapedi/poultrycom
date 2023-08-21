import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../services/services.dart';
import '../utils/utils.dart';

class RegisterViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();
  final _auth = FirebaseAuth.instance;
  User? get currentUser => _auth.currentUser;
  Future register(String email, String password) async {
    try {
      final user = (await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      if (user != null) {
        final CollectionReference<Map<String, dynamic>> newUser =
            FirebaseFirestore.instance.collection('buyer');
        newUser.doc(currentUser!.uid).set({
          'id': currentUser!.uid,
          'email': currentUser!.email,
          'username': currentUser!.email,
          'createdAt': FieldValue.serverTimestamp(),
        });
        _navigationService.navigateTo('/LoginView');
      } else {
        _navigationService.navigateTo('/LoginView');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      } else {
        return e.message;
      }
    } catch (e) {
      _navigationService.navigateTo('/LoginView');
    }
  }
}
