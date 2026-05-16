import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';

class AppTextStyles {
  static TextStyle get titleLarge => TextStyle(
    fontSize: 36.sp,
    height: 1.15,
    color: AppColors.white,
    fontFamily: 'Arial',
    fontWeight: FontWeight.w700,
  );
  static TextStyle get titleMedium => TextStyle(
    fontSize: 24.sp,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get bodyLarge => TextStyle(
    fontSize: 24.sp,
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle get bodyMedium => TextStyle(
    fontSize: 16.sp,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get bodysmall => TextStyle(
    fontSize: 14.sp,
    color: AppColors.grey,
    fontWeight: FontWeight.w400,
  );
}
