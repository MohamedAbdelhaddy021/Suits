import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/widgets/custom_app_bar.dart';
import 'package:suits/core/widgets/otp_input.dart';
import 'package:suits/features/auth/widgets/rich_text_section.dart';
import 'package:suits/features/auth/widgets/title.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 24.h),
        child: Column(
          children: [
            PageTitle(
              title: 'Enter Verification Code',
              subtitle:
                  'Enter code that we have sent to your number 08528188*** ',
            ),
            SizedBox(height: 33.h),
            OtpInput(),
            SizedBox(height: 31.h),
            ElevatedButton(onPressed: () {}, child: Text('Verify')),
            SizedBox(height: 24.h),
            RichTextSection(
              text: 'Didn\'t receive the code? ',
              buttonTitle: 'Resend',
            ),
          ],
        ),
      ),
    );
  }
}
