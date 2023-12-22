import 'package:flutter/material.dart';
import 'package:kmsuit_app/core/theme/app_colors.dart';

class SysTextField extends StatelessWidget {
  const SysTextField(
      {super.key, required this.hintText, required this.onChange});

  final Function(String) onChange;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        hintText: "Name",
        hintStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColors.secondaryTextColor.withOpacity(0.36)),
        filled: true,
        fillColor: AppColors.backgroundColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
