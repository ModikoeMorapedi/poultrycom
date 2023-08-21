import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class StoreViewModel extends ChangeNotifier {
  CollectionReference sellers = FirebaseFirestore.instance.collection('seller');
  Stream<QuerySnapshot> getData() {
    final querySnapshot = sellers.snapshots();
    return querySnapshot;
  }
}
