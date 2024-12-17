import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_project/core/models/user_model.dart';
import 'package:weather_project/features/auth/data/models/auth_model.dart';
import 'package:weather_project/features/auth/data/repos/auth_repos.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepos) : super(const AuthState.initial());
  final AuthRepos _authRepos;

  List<String> listOfValue = ['Male', 'Female'];
  //For Auth
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? gender;

  final formKey = GlobalKey<FormState>();
  final formKeyLogin = GlobalKey<FormState>();
  final formKeyCompleteProfile = GlobalKey<FormState>();
  Country country = CountryParser.parseCountryCode('Eg');

  Future<void> signInWithEmail() async {
    AuthModel authModel = AuthModel(
      password: passwordController.text,
      user: UserModel(email: emailController.text),
    );
    emit(const AuthState.loadingSignIn());
    final result = await _authRepos.signInWithEmail(authModel);
    result.when(
      success: (user) async {
        emit(AuthState.successSignIn(user));
      },
      failure: (failure) =>
          emit(AuthState.failureSignIn(message: failure.message)),
    );
  }

  Future<void> signUpWithEmail() async {
    AuthModel authModel = AuthModel(
        user: UserModel(
          email: emailController.text,
          name: nameController.text,
          phone: "${country.phoneCode}${phoneController.text}",
        ),
        password: passwordController.text);
    emit(const AuthState.loadingRegister());
    final result = await _authRepos.signUpWithEmail(authModel);
    result.when(
      success: (user) => emit(AuthState.successRegister(user)),
      failure: (failure) =>
          emit(AuthState.failureRegister(message: failure.message)),
    );
  }
}
