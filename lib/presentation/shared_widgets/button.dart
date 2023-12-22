import 'package:flutter/material.dart';
import 'package:kmsuit_app/core/theme/app_colors.dart';

class SuitButton extends StatelessWidget {
  const SuitButton({super.key, required this.title, required this.onTap});
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.primaryColor),
        child: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.backgroundColor),
        ),
      ),
    );
  }
}
