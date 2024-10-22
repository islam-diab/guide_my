// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final Function()? onTap;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String? hintText;
  final int? maxLine;
  final bool readOnly;
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
    this.readOnly = false,
    this.onTap,
    this.keyboardType,
    this.textInputAction,
    this.maxLine = 1,
    this.onChanged,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onTap: onTap,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          maxLines: maxLine,
          readOnly: readOnly,
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
              style: AppTextStyles.font16RegularPrimary,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.primary,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
      ],
    );
  }
}
