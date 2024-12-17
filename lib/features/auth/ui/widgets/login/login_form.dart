import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_project/core/helper/app_regex.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/widgets/custom_text_form_field.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  void initState() {
    context.read<AuthCubit>().emailController.text = '';
    context.read<AuthCubit>().passwordController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKeyLogin,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<AuthCubit>().emailController,
            hintText: 'Email or Phone Number',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
          ),
          verticalSpacing(20),
          CustomTextFormField(
              controller: context.read<AuthCubit>().passwordController,
              hintText: 'Enter Your Password',
              isobscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid password";
                }
              }),
        ],
      ),
    );
  }
}
