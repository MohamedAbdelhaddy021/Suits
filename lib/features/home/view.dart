import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/features/home/widgets/home.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  void currentPage(int index) {
    currentIndex = index;
    setState(() {
      log(currentIndex.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
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
