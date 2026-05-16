import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';
import 'app_image.dart';

class AppDropDown extends StatelessWidget {
  const AppDropDown({super.key, this.hint, this.list});
  final String? hint;
  final List<DropdownMenuItem<int>>? list;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: AppColors.black.withValues(alpha: 3 / 100),
        border: Border.all(
          color: const Color(0xff5A6690).withValues(alpha: .4),
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: DropdownButton(
        hint: hint != null
            ? Text(
                hint!,
                style: AppTextStyles.bodyMedium.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.black,
                  fontFamily: 'Inter',
                ),
              )
            : null,
        padding: EdgeInsets.zero,
        alignment: AlignmentGeometry.centerLeft,
        icon: AppImage('arrow_down.svg', color: AppColors.primary),
        items: list,
        onChanged: (value) {},
        borderRadius: BorderRadius.circular(8.r),
        underline: const SizedBox.shrink(),
        itemHeight: 60.h,
        style: AppTextStyles.bodyMedium.copyWith(
          fontSize: 14.sp,
          color: AppColors.black,
          fontFamily: 'Inter',
        ),
        isExpanded: true,
      ),
    );
  }
}
