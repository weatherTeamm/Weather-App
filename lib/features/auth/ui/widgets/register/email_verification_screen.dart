import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_project/core/functions/cuustom_show_dialog.dart';
import 'package:weather_project/core/helper/extension.dart';
import 'package:weather_project/core/helper/spacing.dart';
import 'package:weather_project/core/routing/routes.dart';
import 'package:weather_project/core/theme/app_color.dart';
import 'package:weather_project/core/theme/app_styles.dart';
import 'package:weather_project/core/widgets/app_bar_back_button.dart';
import 'package:weather_project/core/widgets/custom_material_button.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  Timer? _verificationCheckTimer;

  @override
  void initState() {
    super.initState();
    _startVerificationCheck();
  }

  @override
  void dispose() {
    _verificationCheckTimer?.cancel();
    super.dispose();
  }

  void _startVerificationCheck() {
    _resendVerificationEmail();
    _verificationCheckTimer = Timer.periodic(
      const Duration(seconds: 3),
      (_) => _checkEmailVerificationStatus(),
    );
  }

  Future<void> _checkEmailVerificationStatus() async {
    await FirebaseAuth.instance.currentUser?.reload();
    bool isVerified = FirebaseAuth.instance.currentUser?.emailVerified ?? false;

    if (isVerified) {
      _handleEmailVerified();
    }
  }

  void _handleEmailVerified() async {
    showCustomDialog(context,
        subtitle: "Email Successfully Verified",
        title: 'Success',
        actions: [
          CustomMaterialButton(
              textButton: 'Continue',
              onPressed: () {
                context.pushNamedAndRemoveUntil(
                  Routes.homeScreen,
                  predicate: (route) => false,
                );
              })
        ]);
    _verificationCheckTimer?.cancel();
  }

  Future<void> _resendVerificationEmail() async {
    await FirebaseAuth.instance.currentUser?.sendEmailVerification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildResendButton(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppBarBackButton(),
                verticalSpacing(40),
                Text('Email Verification', style: TextStyles.font24BlueBold),
                verticalSpacing(12),
                Text('Check your email address',
                    style: TextStyles.font14LightGrayRegular),
                verticalSpacing(30),
                const Center(
                  child: LinearProgressIndicator(color: ColorsManager.primary),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResendButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: CustomMaterialButton(
        textButton: 'Resend Verification',
        onPressed: _resendVerificationEmail,
      ),
    );
  }
}
