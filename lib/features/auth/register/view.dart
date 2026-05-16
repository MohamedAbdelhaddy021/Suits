import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/utils/text_styles.dart';
import 'package:suits/core/widgets/app_input/app_input.dart';
import 'package:suits/core/widgets/custom_app_bar.dart';
import 'package:suits/features/auth/widgets/rich_text_section.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Sign Up'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 24.h),
        child: Column(
          children: [
            AppInput(labelText: 'Enter your name', prefixIcon: 'username.png'),
            AppInput(labelText: 'Enter your email', prefixIcon: 'email.png'),
            AppInput(
              labelText: 'Enter your password',
              isPassword: true,
              prefixIcon: 'password.png',
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Transform.translate(
                  offset: Offset(0, -8),
                  child: Checkbox(value: false, onChanged: (value) {}),
                ),
                Expanded(
                  child: RichText(
                    textAlign: TextAlign.justify,
                    textScaler: TextScaler.linear(1.1),
                    text: TextSpan(
                      text: 'I agree to the medidoc ',
                      style: AppTextStyles.bodysmall.copyWith(
                        color: const Color(0xff3B4453),
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms of Service ',
                          style: TextStyle(color: AppColors.primary),
                        ),
                        TextSpan(text: '\nand '),
                        TextSpan(
                          text: 'Terms of Service ',
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
            SizedBox(height: 30.h),
            RichTextSection(
              text: 'Have an account? ',
              buttonTitle: 'Sign In',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
