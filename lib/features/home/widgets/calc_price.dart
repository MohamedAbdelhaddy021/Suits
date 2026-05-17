import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalcPrice extends StatelessWidget {
  const CalcPrice({super.key, required this.title, required this.price});
  final String title, price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.w, 0, 18.w, 14.h),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              fontFamily: 'Montserrat',
              color: const Color(0xff858585),
            ),
          ),
          Spacer(),
          Text(
            price,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              fontFamily: 'Montserrat',
            ),
          ),
        ],
      ),
    );
  }
}
