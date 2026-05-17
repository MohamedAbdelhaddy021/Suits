import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData get appTheme => ThemeData(fontFamily: 'Inter').copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      primary: AppColors.primary,
    ),
    scaffoldBackgroundColor: Color(0xffF4F5F7),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: const Color(0xffF4F5F7),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: AppTextStyles.bodyLarge.copyWith(
        color: AppColors.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      ),
    ),

    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.white,
        fixedSize: Size.square(50.w),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primary,
      unselectedItemColor: AppColors.white.withValues(alpha: .5),
      selectedIconTheme: IconThemeData(color: AppColors.white),
      selectedLabelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14.sp,
        fontVariations: [const FontVariation('wght', 400)],
      ),
      unselectedLabelStyle: TextStyle(fontSize: 12.sp),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        padding: EdgeInsets.zero,
        textStyle: AppTextStyles.bodysmall.copyWith(fontSize: 16.sp),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 56.h),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(32.r),
        ),
        textStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: AppTextStyles.bodyMedium.copyWith(
        fontSize: 14.sp,
        color: AppColors.black,
      ),
    ),
  );
}
