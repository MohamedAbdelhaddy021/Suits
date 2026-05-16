import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/widgets/app_image.dart';

class AppGridView extends StatelessWidget {
  const AppGridView({super.key, required this.itemCount});
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        // bottom: MediaQuery.of(context).padding.bottom,
      ),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 120 / 150,
          mainAxisSpacing: 20,
          crossAxisSpacing: 12,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadiusGeometry.circular(8.r),
            child: AppImage('me.jpg',fit: BoxFit.cover,));
        },
      ),
    );
  }
}

