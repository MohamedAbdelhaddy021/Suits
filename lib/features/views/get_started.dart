import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/services/helper_methods.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/widgets/app_image.dart';
import 'package:suits/features/auth/login/view.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: -75.h,
                  left: -50,
                  child: AppImage('bac_left.png', height: 225.h),
                ),
                Positioned(
                  top: 130,
                  right: 0,
                  child: AppImage('bac_right.png', height: 225.h),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 70.h, 15.w, 33.h),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(45.r),
                        child: AppImage(
                          'on_boarding3.jpg',
                          width: MediaQuery.of(context).size.width / 2 - 48.w,
                          height: 370.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 53.w),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(45.r),
                            child: AppImage(
                              'on_boarding4.jpg',
                              width:
                                  MediaQuery.of(context).size.width / 2 - 38.w,
                              height: 214.h,
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(height: 8.h),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: AppImage(
                              'on_boarding5.jpg',
                              width:
                                  MediaQuery.of(context).size.width / 2 - 36.w,
                              height: 150.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'The ',

                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                  fontFamily: 'Montserrat',
                ),
                children: [
                  TextSpan(
                    text: 'Suits App',
                    style: TextStyle(color: AppColors.primary),
                  ),
                  TextSpan(text: ' that\nMakes Your Look Your Best'),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Everything you need in the world\nof fashion, old and new',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24.w, 61.h, 24.w, 24.h),
              child: ElevatedButton(
                onPressed: () {
                  navigateTo(LoginView(), removeHistory: true);
                },
                child: Text('Get Started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
