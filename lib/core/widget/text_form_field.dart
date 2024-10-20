import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final Function()? onTap;
  final Function(String)? onChanged;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isObscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  const AppTextFormField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscureText = false,
    this.validator,
    required this.controller,
    this.onTap,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isObscureText,
      textInputAction: textInputAction,
      style: AppTextStyles.font18DarkBlueBold,
      decoration: InputDecoration(
        isDense: true,
        hintStyle: AppTextStyles.font16SemiBold,
        hintText: hintText,
        label: Text(
          hintText ?? '',
          style: AppTextStyles.font18BoldPrimary,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        focusedBorder: custtomOutlineInputBorder(AppColor.primary),
        errorBorder: custtomOutlineInputBorder(Colors.red),
        focusedErrorBorder: custtomOutlineInputBorder(Colors.red),
        enabledBorder: custtomOutlineInputBorder(Colors.black),
      ),
    );
  }

  OutlineInputBorder custtomOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1.3.w,
      ),
      borderRadius: BorderRadius.circular(16.0),
    );
  }
}
