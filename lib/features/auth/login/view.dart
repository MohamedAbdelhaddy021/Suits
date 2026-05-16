import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/services/helper_methods.dart';
import 'package:suits/core/utils/text_styles.dart';
import 'package:suits/core/widgets/app_input/app_input.dart';
import 'package:suits/core/widgets/custom_app_bar.dart';
import 'package:suits/features/auth/register/view.dart';
import 'package:suits/features/auth/widgets/rich_text_section.dart';

import 'widgets/login_with.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Login'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 24.h),
        child: Column(
          children: [
            AppInput(labelText: 'Email', prefixIcon: 'email.png'),
            AppInput(
              labelText: 'Password',
              isPassword: true,
              bottomPadding: 0,
              prefixIcon: 'password.png',
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(onPressed: () {}, child: const Text('Sign In')),
            SizedBox(height: 16.h),
            RichTextSection(
              text: 'Don\'t have an account?',
              buttonTitle: 'SignUp',
              onTap: () {
                navigateTo(RegisterView());
              },
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Divider(height: 70.h, color: const Color(0xffA1A8B0)),
                Text(
                  'OR',
                  style: AppTextStyles.bodysmall.copyWith(fontSize: 16.sp),
                ),
              ],
            ),
            LoginWith(title: 'Google', icon: 'google.svg', onTap: () {}),
            LoginWith(title: 'Apple', icon: 'apple.png', onTap: () {}),
            LoginWith(title: 'Facebook', icon: 'facebook.svg', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
