import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/widgets/app_image.dart';

class AppGridView extends StatefulWidget {
  const AppGridView({super.key, required this.itemCount});
  final int itemCount;

  @override
  State<AppGridView> createState() => _AppGridViewState();
}

class _AppGridViewState extends State<AppGridView> {
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 130 / 150,
          mainAxisSpacing: 20,
          crossAxisSpacing: 12,
        ),
        itemCount: widget.itemCount,
        itemBuilder: (context, index) {
          return ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadiusGeometry.circular(8.r),
            child: Stack(
              fit: StackFit.expand,
              children: [
                AppImage('me.jpg', fit: BoxFit.cover),
                Positioned(
                  right: 8.w,
                  top: 9.h,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        log(isFavorite.toString());
                        isFavorite = !isFavorite;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        radius: 20.r,
                        foregroundColor: AppColors.primary,
                        backgroundColor: AppColors.white.withValues(alpha: .8),
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_outline,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
