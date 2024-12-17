import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_project/core/models/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  /// 2. Define the initial state of the cubit
  const factory AuthState.initial() = _Initial;

  /// 3. Define the state that the cubit will maintain

  /// Login states
  const factory AuthState.loadingSignIn() = LoadingSignIn;
  const factory AuthState.successSignIn(UserModel userProfile) = SuccessSignIn;
  const factory AuthState.failureSignIn({required String message}) =
      FailureSignIn;

  /// Register states
  const factory AuthState.loadingRegister() = LoadingRegister;
  const factory AuthState.successRegister(User user) = SuccessRegister;
  const factory AuthState.failureRegister({required String message}) =
      FailureRegister;
}
