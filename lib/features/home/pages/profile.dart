import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/utils/text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(17.w),
      child: SafeArea(
        child: Column(
          children: [
            Text('Profile', style: AppTextStyles.montesraatLarge),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: CircleAvatar(
                radius: 60.r,
                backgroundImage: AssetImage('assets/images/me.jpg'),
              ),
            ),
            Text('Mohamed Abdelhady', style: AppTextStyles.montesraatLarge),
            SizedBox(height: 40.h),
            _Item(icon: Icons.person, buttonTitle: 'Your Profile'),
            _Item(icon: Icons.menu, buttonTitle: 'My Order'),
            _Item(icon: Icons.payment_outlined, buttonTitle: 'Payment Methods'),
            _Item(
              icon: Icons.favorite_border_outlined,
              buttonTitle: 'Wishlist',
            ),
            _Item(icon: Icons.settings_outlined, buttonTitle: 'Setting'),
            _Item(
              icon: Icons.logout_outlined,
              buttonTitle: 'Log Out',
              bottomPadding: 8.h,
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.icon,
    required this.buttonTitle,
    this.bottomPadding = 25,
  });
  final IconData icon;
  final String buttonTitle;
  final double bottomPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding.h),
      child: ElevatedButton.icon(
        onPressed: () {},
        label: Text(buttonTitle),
        icon: Icon(icon, size: 28.sp),
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 19.w),
          textStyle: AppTextStyles.montesraatLarge.copyWith(fontSize: 15.sp),
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.black,
          iconColor: AppColors.primary,
          shape: RoundedRectangleBorder(),
        ),
      ),
    );
  }
}
