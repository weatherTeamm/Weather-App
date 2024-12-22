import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather_project/core/models/user_model.dart';
import 'package:weather_project/features/auth/data/models/auth_model.dart';

/// 1. Define an abstract class (interface) to ensure future flexibility.
abstract class AuthService {
  // FirebaseAuth methods
  Future<UserModel?> signInWithEmail(AuthModel authModel);
  Future<User?> signUpWithEmail(AuthModel authModel);
  Future<void> signOut();
}
