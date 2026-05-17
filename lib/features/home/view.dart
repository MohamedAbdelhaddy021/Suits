import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/services/helper_methods.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/widgets/custom_app_bar.dart';
import 'package:suits/features/home/pages/cart.dart';
import 'package:suits/features/home/pages/home.dart';
import 'package:suits/features/home/pages/wishlist.dart';

import 'pages/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final List<Map<String, dynamic>> pages = [
    {'page': HomePage(), 'title': null},
    {'page': CartPage(), 'title': null},
    {'page': WishlistPage(), 'title': 'My Wishlist'},
    {'page': ProfilePage(), 'title': null},
  ];

  void currentPage(int index) {
    currentIndex = index;
    if (index == 1) {
      navigateTo(CartPage());
      return;
    }
    setState(() {
      if (index == 1) {
        currentIndex = index - 1;
      } else {
        currentIndex = index;
      }

      log(currentIndex.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pages[currentIndex]['title'] == null
          ? null
          : CustomAppBar(
              title: pages[currentIndex]['title'],
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
      body: pages[currentIndex]['page'],
      bottomNavigationBar: DefaultBottomNavBar(
        currentIndex: currentIndex,
        onTap: currentPage,
      ),
    );
  }
}

class DefaultBottomNavBar extends StatelessWidget {
  const DefaultBottomNavBar({
    super.key,
    required this.currentIndex,
    this.onTap,
  });
  final int currentIndex;
  final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: AppColors.primary),
      unselectedItemColor: AppColors.grey,
      backgroundColor: AppColors.white,
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_rounded),
          label: 'Fav',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
