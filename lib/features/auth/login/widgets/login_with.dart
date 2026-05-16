import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/widgets/app_image.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({
    super.key,
    this.onTap,
    required this.title,
    required this.icon,
  });
  final void Function()? onTap;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.w),
      child: ElevatedButton.icon(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.black,
          side: BorderSide(color: Color(0xffE5E7EB)),
          iconAlignment: IconAlignment.start,
          
        ),
        label: Center(child: Text('Sign in with $title ')),
        icon: AppImage(icon, width: 30.w, height: 30.w, fit: BoxFit.cover),
      ),
    );
  }
}
