import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_project/core/functions/cuustom_show_dialog.dart';
import 'package:weather_project/core/helper/extension.dart';
import 'package:weather_project/core/routing/routes.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/widgets/custom_outline_button.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          current is SuccessSignIn ||
          current is FailureSignIn ||
          current is LoadingSignIn,
      listener: (context, state) {
        state.whenOrNull(
          successSignIn: (data) async {
            context.pop();
            if (FirebaseAuth.instance.currentUser!.emailVerified) {
              context.pushNamedAndRemoveUntil(Routes.homeScreen,
                  predicate: (_) => false);
            } else {
              context.pushNamedAndRemoveUntil(Routes.emailVerification,
                  predicate: (_) => false);
            }
          },
          failureSignIn: (error) {
            context.pop();
            showCustomDialog(context,
                subtitle: error,
                title: 'Failed Login',
                actions: [
                  CustomOutlineButton(
                    textButton: 'Cancel',
                    onPressed: () {
                      context.pop();
                    },
                  )
                ]);
          },
          loadingSignIn: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
