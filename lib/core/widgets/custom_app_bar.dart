import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.color,
    this.title,
     this.textStyle, this.onTap,
  });
  final Color? color;
  final String? title;
  final TextStyle? textStyle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle: textStyle,
      title: title != null ? Text(title!) : null,
      backgroundColor: color,
      leading: IconButton(
        onPressed: onTap ?? () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
        style: IconButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
