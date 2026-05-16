import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/services/helper_methods.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/utils/text_styles.dart';
import 'package:suits/features/views/get_started.dart';

import 'model/data/data.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final pages = onBoardingPages;
  int currentIndex = 0;
  void nextPage() {
    if (currentIndex < pages.length - 1) {
      currentIndex++;
      setState(() {});
    } else if (currentIndex == pages.length - 1) {
      navigateTo(GetStartedView(), isReplacement: true);
    }
  }

  void previousPage() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pages[currentIndex].image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pages[currentIndex].title, style: AppTextStyles.titleLarge),
            SizedBox(height: 18.h),
            Text(
              pages[currentIndex].subTitle,
              style: AppTextStyles.bodysmall.copyWith(
                color: AppColors.white,
                fontFamily: 'Arial',
              ),
            ),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentIndex == 0) Spacer(),
                if (currentIndex > 0)
                  IconButton.outlined(
                    onPressed: previousPage,
                    icon: Icon(Icons.arrow_back_ios, color: AppColors.primary),
                  ),
                Row(
                  children: List.generate(pages.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: currentIndex == index ? 7 : 5,
                        backgroundColor: currentIndex == index
                            ? AppColors.primary
                            : Colors.brown.withValues(alpha: .6),
                      ),
                    );
                  }),
                ),
                if (currentIndex == 0) Spacer(),
                IconButton.filled(
                  onPressed: nextPage,
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
