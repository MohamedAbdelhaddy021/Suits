import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/utils/app_colors.dart';
import 'package:suits/core/widgets/app_image.dart';
import 'package:suits/core/widgets/custom_app_bar.dart';
import 'package:suits/features/home/widgets/calc_price.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My cards',
        onTap: () {
          Navigator.pop(context);
        },
        textStyle: TextStyle(
          fontSize: 20.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(left: 18.w, top: 16.h, bottom: 16.h),
              itemBuilder: (context, index) => Dismissible(
                key: ValueKey(index),
                onDismissed: (direction) {
                  setState(() {});
                },
                background: Container(
                  width: double.infinity,
                  color: Colors.red.shade800,
                  child: Icon(Icons.delete, color: Colors.white, size: 30.sp),
                ),
                child: _CartItem(),
              ),
              separatorBuilder: (context, index) => Divider(height: 40.h),
              itemCount: 4,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 16.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: .05),
                  spreadRadius: 12,
                  blurRadius: 12,
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: TextField(
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 56.h),
                        hintText: 'Promo code',
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(8.w),
                          child: FilledButton(
                            onPressed: () {},
                            child: Text('Apply'),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),

                          borderSide: BorderSide(color: Color(0xffB5B5B5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(color: Color(0xffB5B5B5)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(color: Color(0xffB5B5B5)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CalcPrice(title: 'Sub-Total', price: '\$407.94'),
                  CalcPrice(title: 'Delivery Freel', price: '\$25.00'),
                  CalcPrice(title: 'Disscount', price: '\$-35.00'),
                  Divider(height: 30.h, endIndent: 18.w, indent: 18.w),
                  CalcPrice(title: 'Total Cost', price: '\$397.94'),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 6,
                      vertical: 16.h,
                    ),
                    child: SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Proceed to Checkout'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CartItem extends StatelessWidget {
  const _CartItem();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(8.r),
          child: AppImage(
            'me.jpg',
            height: 143.h,
            width: 121.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 16.w),
        SizedBox(
          height: 144.h,
          width: MediaQuery.of(context).size.width - 155.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Classic Blazar',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              Text(
                'Size:xl',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                    '\$83.97',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffAB94A6),
                    ),
                  ),
                  Spacer(),
                  IconButton.filled(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    constraints: BoxConstraints(
                      maxWidth: 24.w,
                      maxHeight: 25.h,
                    ),
                    style: IconButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.black,
                      iconSize: 16,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5.r),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.w),
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    constraints: BoxConstraints(
                      maxHeight: 25.h,
                      maxWidth: 24.w,
                    ),
                    style: IconButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.white,
                      iconSize: 16,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5.r),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
