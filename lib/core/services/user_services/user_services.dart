import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:weather_project/core/models/user_model.dart';

abstract class UserServices {
  Future<dynamic> setUserDataFirestore(UserModel userProfile, String uid);
}

class FirestoreUserServices implements UserServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<void> setUserDataFirestore(UserModel userProfile, String uid) async {
    userProfile.toJson();
    await _firestore.collection('users').doc(uid).set(userProfile.toJson());
  }

  Future<UserModel?> getUserDataFirestore(String uid) async {
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await _firestore.collection('users').doc(uid).get();
    if (documentSnapshot.data() != null) {
      return UserModel.fromJson(documentSnapshot.data()!);
    } else {
      return null;
    }
  }
}
