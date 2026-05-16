import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/widgets/app_input/app_input.dart';
import 'package:suits/core/widgets/custom_app_bar.dart';
import 'package:suits/features/auth/widgets/title.dart';

class ResetViewPassword extends StatefulWidget {
  const ResetViewPassword({super.key});

  @override
  State<ResetViewPassword> createState() => _ResetViewPasswordState();
}

class _ResetViewPasswordState extends State<ResetViewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTitle(
              title: 'Create New Password',
              subtitle: 'Create your new password to login',
            ),
            SizedBox(height: 24.h),
            AppInput(
              labelText: 'Enter new password',
              isPassword: true,
              prefixIcon: 'password.png',
            ),
            AppInput(
              labelText: 'Confirm password',
              isPassword: true,
              prefixIcon: 'password.png',
              ),
            ElevatedButton(onPressed: () {}, child: Text('Create Password')),
          ],
        ),
      ),
    );
  }
}
