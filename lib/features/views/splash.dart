import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/features/on_boarding/view.dart';

import '../../core/services/helper_methods.dart';
import '../../core/widgets/app_image.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      navigateTo(OnBoardingView());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: SizedBox(
          height: 150.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Center(
                  child: AppImage(
                    'app_logo.png',
                    width: 110.w,
                    height: 110.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 11.w),
              Text(
                'Suits',

                style: TextStyle(
                  fontSize: 128.sp,
                  letterSpacing: .5,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Waterfall',
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
