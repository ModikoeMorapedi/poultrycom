import 'package:cloud_firestore/cloud_firestore.dart';

abstract class DataRepository {
  Stream<QuerySnapshot> getStream();
  Future<DocumentReference> addPet();
  void updatePet();
  void deletePet();
}
