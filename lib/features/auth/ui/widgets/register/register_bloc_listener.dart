import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_project/core/functions/cuustom_show_dialog.dart';
import 'package:weather_project/core/helper/extension.dart';
import 'package:weather_project/core/routing/routes.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/widgets/custom_material_button.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_state.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loadingRegister: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          successRegister: (data) {
            context.pop();
            showCustomDialog(context,
                subtitle: 'Congratulations, you have signed up successfully!',
                title: 'Signup Successful',
                actions: [
                  CustomMaterialButton(
                    textButton: 'Continue',
                    onPressed: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                  ),
                ]);
          },
          failureRegister: (error) {
            context.pop();
            showCustomDialog(context,
                title: 'Error',
                subtitle: error,
                actions: [
                  CustomMaterialButton(
                    textButton: 'Continue',
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ]);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is LoadingRegister ||
          current is SuccessRegister ||
          current is FailureRegister,
      child: const SizedBox.shrink(),
    );
  }
}
