import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather_project/core/helper/cache_helper.dart';
import 'package:weather_project/core/models/user_model.dart';
import 'package:weather_project/core/services/user_services/user_services.dart';
import 'package:weather_project/features/auth/data/models/auth_model.dart';
import 'package:weather_project/features/auth/data/services/auth_services.dart';

class FirebaseAuthService implements AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final _firestore = FirestoreUserServices();

  FirebaseAuthService();

  /// Sign in using email and password
  @override
  Future<UserModel?> signInWithEmail(AuthModel auth) async {
    UserModel? userModel;
    UserCredential userCredential =
        await _firebaseAuth.signInWithEmailAndPassword(
      email: auth.user!.email!,
      password: auth.password,
    );
    await _firestore
        .getUserDataFirestore(userCredential.user!.uid)
        .then((value) async {
      await CacheHelper.saveData(key: 'token', value: userCredential.user!.uid);

      userModel = value!;
    });
    return userModel;
  }

  /// Sign up using email and password
  @override
  Future<User?> signUpWithEmail(AuthModel auth) async {
    UserCredential userCredential =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: auth.user!.email!,
      password: auth.password,
    );
    UserModel userProfile = UserModel(
      email: userCredential.user!.email!,
      name: auth.user!.name,
      phone: auth.user!.phone,
    );

    if (userCredential.user != null) {
      await _firestore.setUserDataFirestore(
          userProfile, userCredential.user!.uid);
    }
    return userCredential.user;
  }

  /// Sign out the current user
  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
