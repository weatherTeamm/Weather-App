import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/theme/app_styles.dart';
import 'package:weather_project/core/widgets/app_bar_back_button.dart';
import 'package:weather_project/core/widgets/custom_material_button.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';
import 'package:weather_project/features/auth/ui/widgets/login/login_bloc_listener.dart';
import 'package:weather_project/features/auth/ui/widgets/login/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  void validateThenDoLogin(BuildContext context) {
    if (context.read<AuthCubit>().formKeyLogin.currentState!.validate()) {
      context.read<AuthCubit>().signInWithEmail();
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
                'Sign in with your email or phone number',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpacing(30),
              const LoginForm(),
              verticalSpacing(20),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font14LightGrayRegular
                            .copyWith(color: Colors.red),
                      ))),
              verticalSpacing(50),
              CustomMaterialButton(
                  textButton: "Sign In",
                  onPressed: () async {
                    validateThenDoLogin(context);
                  }),
              const LoginBlocListener()
            ],
          ),
        ),
      ),
    ));
  }
}
