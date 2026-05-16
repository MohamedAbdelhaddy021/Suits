import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/text_styles.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key, required this.title, required this.subtitle});
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.bodyLarge),
        SizedBox(height: 8.h),
        Text(
          subtitle,
          style: AppTextStyles.bodysmall.copyWith(fontSize: 16.sp),
        ),
      ],
    );
  }
}
