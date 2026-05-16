import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/widgets/app_image.dart';

import '../../utils/app_colors.dart';
import '../../utils/text_styles.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.validator,
    this.isPassword = false,
    this.isPhone = false,
    this.onChanged,
    this.onSaved,
    required this.labelText,
    this.controller,
    this.bottomPadding = 20,
    this.listLength,
    this.menuController,
    this.sendCountryCode,
    this.prefixIcon,
    this.prefixIconColor,
  });
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool isPassword, isPhone;
  final String labelText;
  final String? prefixIcon;
  final Color? prefixIconColor;

  final TextEditingController? controller, menuController;
  final int? listLength;
  final double bottomPadding;

  final void Function(String code)? sendCountryCode;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isPassword = true;

  int? initialValue;
  String? selectedCode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bottomPadding),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: widget.isPassword && isPassword,
        onChanged: widget.onChanged,
        onSaved: widget.onSaved,
        style: AppTextStyles.bodyMedium,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF9FAFB),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.r),
            borderSide: BorderSide(color: const Color(0xffE5E7EB), width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.r),
            borderSide: BorderSide(color: const Color(0xffE5E7EB), width: 1.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.r),
            borderSide: BorderSide(color: Colors.red.shade800, width: 1.5.w),
          ),
          errorStyle: AppTextStyles.bodyMedium.copyWith(
            color: const Color(0xffFE0000),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.r),
            borderSide: BorderSide(color: Colors.red.shade800, width: 1.5.w),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.r),
            borderSide: BorderSide(color: const Color(0xffE5E7EB)),
          ),
          labelText: widget.labelText,
          prefixIconColor: widget.prefixIconColor,
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: EdgeInsetsDirectional.only(start: 16.w, end: 4.w),
                  child: AppImage(
                    widget.prefixIcon!,
                    width: 24.w,
                    height: 24.h,
                  ),
                )
              : null,
          prefixIconConstraints: BoxConstraints(
            minHeight: 56.w,
            maxWidth: 46.w,
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    isPassword = !isPassword;
                    setState(() {});
                  },
                  style: IconButton.styleFrom(foregroundColor: AppColors.grey),
                  icon: Icon(
                    isPassword ? Icons.visibility_off : Icons.visibility,
                  ),
                )
              : null,
          labelStyle: AppTextStyles.bodysmall.copyWith(color: AppColors.grey),
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
