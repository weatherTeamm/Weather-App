import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather_project/core/models/user_model.dart';
import 'package:weather_project/core/networking/firebase_error_handler.dart';
import 'package:weather_project/core/networking/firebase_result.dart';
import 'package:weather_project/features/auth/data/models/auth_model.dart';
import 'package:weather_project/features/auth/data/services/firebase_auth_services.dart';

class AuthRepos {
  final FirebaseAuthService _firebaseAuthService;

  AuthRepos(this._firebaseAuthService);

  Future<FirebaseResult<UserModel>> signInWithEmail(AuthModel auth) async {
    try {
      UserModel? userProfile = await _firebaseAuthService.signInWithEmail(auth);
      return FirebaseResult.success(userProfile!);
    } on FirebaseAuthException catch (e) {
      /// [FirebaseResult] with a [FirebaseErrorHandler] error.
      ///
      /// [auth] is an [AuthModel] containing the user's email and password.
      ///
      return FirebaseResult.failure(
          FirebaseErrorHandler.handle(e, FirebaseErrorType.auth));
    }
  }

  Future<FirebaseResult<User>> signUpWithEmail(AuthModel auth) async {
    try {
      User? user = await _firebaseAuthService.signUpWithEmail(auth);
      return FirebaseResult.success(user!);
    } on FirebaseAuthException catch (e) {
      return FirebaseResult.failure(
          FirebaseErrorHandler.handle(e, FirebaseErrorType.auth));
    }
  }
}
