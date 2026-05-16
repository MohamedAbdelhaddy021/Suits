import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/widgets/app_input/app_input.dart';
import 'package:suits/core/widgets/custom_app_bar.dart';
import 'package:suits/features/auth/widgets/title.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  bool isphone = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 24.h),
        child: Column(
          children: [
            PageTitle(
              title: 'Forget Your Password?',
              subtitle:
                  'Enter your email or your phone number, we will send you confirmation code',
            ),
            SizedBox(height: 30.h),
            Container(
              height: 56.h,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: AppColors.white,
                border: Border.all(color: Color(0xffE5E7EB), width: 1),
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      isphone = false;
                      setState(() {});
                    },
                    child: Text(
                      'Email',
                      style: TextStyle(color: !isphone ? null : Colors.grey),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      isphone = true;
                      setState(() {});
                    },
                    child: Text(
                      'Phone',
                      style: TextStyle(color: isphone ? null : Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            AppInput(
              labelText: isphone ? 'Phone' : 'Email',
              prefixIcon: isphone ? 'call.png' : 'email.png',
              bottomPadding: 33.h,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Reset Password')),
          ],
        ),
      ),
    );
  }
}
