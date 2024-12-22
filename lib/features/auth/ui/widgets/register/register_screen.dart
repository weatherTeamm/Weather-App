import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_styles.dart';
import 'package:weather_project/core/widgets/app_bar_back_button.dart';
import 'package:weather_project/core/widgets/custom_material_button.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';
import 'package:weather_project/features/auth/ui/widgets/register/privacy_and_policy_widget.dart';
import 'package:weather_project/features/auth/ui/widgets/register/register_bloc_listener.dart';
import 'package:weather_project/features/auth/ui/widgets/register/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  void validateThenDoSignup(BuildContext context) {
    if (context.read<AuthCubit>().formKey.currentState!.validate()) {
      context.read<AuthCubit>().signUpWithEmail();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const AppBarBackButton(),
              verticalSpacing(30),
              Text(
                'Sign up with your email or phone number',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpacing(30),
              const RegisterForm(),
              verticalSpacing(20),
              const PrivacyAndPolicyWidget(),
              verticalSpacing(40),
              CustomMaterialButton(
                  textButton: "Sign Up",
                  onPressed: () async {
                    validateThenDoSignup(context);
                  }),
              const RegisterBlocListener()
            ],
          ),
        ),
      ),
    ));
  }
}
