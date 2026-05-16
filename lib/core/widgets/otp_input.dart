import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key, this.fieldsNumber = 4, this.controller});
  final int fieldsNumber;
  final void Function(List<TextEditingController?>)? controller;
  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      autoFocus: true,
      numberOfFields: fieldsNumber,
      handleControllers: controller,
      borderRadius: BorderRadius.circular(12.r),
      filled: true,
      showFieldAsBox: true,
      borderColor: AppColors.primary,
      enabledBorderColor: AppColors.grey.withValues(alpha: .36),
      keyboardType: TextInputType.numberWithOptions(),
      margin: EdgeInsetsGeometry.only(
        right: MediaQuery.of(context).size.width / 25,
      ),
      focusedBorderColor: AppColors.primary,
      fieldWidth: 55.w,
      fieldHeight: 60.h,
      textStyle: AppTextStyles.bodyMedium.copyWith(fontSize: 18.sp),
    );
  }
}
