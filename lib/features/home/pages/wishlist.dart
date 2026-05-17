import 'package:flutter/material.dart';
import 'package:suits/core/widgets/app_grid_view.dart';
import 'package:suits/features/home/widgets/select_category.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [SelectCategory(topMargin: 16), AppGridView(itemCount: 2)],
      ),
    );
  }
}
