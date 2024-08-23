import 'package:flutter/material.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';

class AppOutlineButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget? child;
  final String? text;
  final bool isSelected;
  const AppOutlineButton({
    super.key,
    required this.onPressed,
    this.child,
    this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: isSelected ? AppColor.primary : null,
        side: isSelected
            ? null
            : const BorderSide(
                color: AppColor.primary,
                width: 2.0,
              ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 12.0,
        ), // Button padding
      ),
      onPressed: onPressed,
      child: child ??
          Text(
            text ?? '',
            style: AppTextStyles.font16SemiBold.copyWith(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
    );
  }
}
