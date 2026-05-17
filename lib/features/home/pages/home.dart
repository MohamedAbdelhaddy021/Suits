import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/utils/text_styles.dart';
import 'package:suits/core/widgets/app_grid_view.dart';
import 'package:suits/core/widgets/app_image.dart';
import 'package:suits/features/home/widgets/select_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentCategory = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            centerTitle: false,
            title: Text('Hello Sofia'),
            actions: [
              IconButton.filled(
                onPressed: () {},
                icon: Icon(Icons.notifications_outlined),
                color: AppColors.primary,
                style: IconButton.styleFrom(backgroundColor: AppColors.white),
              ),
            ],
          ),
          Container(
            color: AppColors.white,
            padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 17.h),
            margin: EdgeInsets.only(top: 28.h, right: 16.w, left: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Collection',
                      style: AppTextStyles.bodyMedium.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Disscount 50% for\nthe first transaction',
                      style: AppTextStyles.bodysmall,
                    ),
                    SizedBox(height: 16.h),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.h,
                          horizontal: 16.w,
                        ),
                        minimumSize: Size(100, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12.r),
                        ),
                      ),
                      child: Text(
                        'Shop now',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                AppImage('dressing.png', height: 104.h),
              ],
            ),
          ),
          SizedBox(height: 28.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Text(
                  'Categary',
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: 20.sp,
                  ),
                ),
                Spacer(),
                TextButton(onPressed: () {}, child: Text('See All')),
              ],
            ),
          ),
          SizedBox(
            height: 60.h,
            child: ListView.builder(
              itemCount: 8,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 50.w,
                height: 50.h,
                margin: EdgeInsets.only(right: 12.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primary),
                ),
              ),
            ),
          ),
          SizedBox(height: 28.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text(
              'Flash Sale',
              style: AppTextStyles.bodyLarge.copyWith(
                fontFamily: 'Montserrat',
                fontSize: 20.sp,
              ),
            ),
          ),
          SelectCategory(),
          AppGridView(itemCount: 6),
        ],
      ),
    );
  }
}
