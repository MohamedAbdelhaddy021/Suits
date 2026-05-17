import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key,  this.topMargin=40});
  final double topMargin;
  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  int currentCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      margin: EdgeInsets.only(top: widget.topMargin.h, bottom: 36.h),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(right: 16.w, left: 16.w),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
        itemBuilder: (context, index) => InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: () {
            currentCategory = index;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: currentCategory == index
                  ? AppColors.primary
                  : AppColors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              'Newest',
              style: TextStyle(
                color: currentCategory == index
                    ? AppColors.white
                    : AppColors.black,
                fontSize: 15.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
