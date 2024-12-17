import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/functions/custom_show_country_picker.dart';
import 'package:weather_project/core/helper/app_regex.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/widgets/custom_text_form_field.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    var country = context.read<AuthCubit>().country;
    return Form(
      key: context.read<AuthCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
              hintText: 'Name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid name";
                }
              },
              controller: context.read<AuthCubit>().nameController),
          verticalSpacing(20),
          CustomTextFormField(
              hintText: 'Email',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return "Please enter a valid email";
                }
              },
              controller: context.read<AuthCubit>().emailController),
          verticalSpacing(20),
          CustomTextFormField(
              controller: context.read<AuthCubit>().phoneController,
              hintText: 'Your mobile number',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.hasNumber('${country.phoneCode}$value')) {
                  return "Please enter a valid number";
                }
              },
              prefix: GestureDetector(
                onTap: () => customShowCountryPicker(
                  context,
                  onSelect: (p0) {
                    setState(() {
                      context.read<AuthCubit>().country = p0;
                    });
                  },
                ),
                child: Container(
                  width: 100.w,
                  height: 55.h,
                  alignment: Alignment.center,
                  child: Text(
                    '${country.flagEmoji} +${country.phoneCode}',
                  ),
                ),
              )),
          verticalSpacing(20),
          CustomTextFormField(
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
            controller: context.read<AuthCubit>().passwordController,
          ),
        ],
      ),
    );
  }
}
