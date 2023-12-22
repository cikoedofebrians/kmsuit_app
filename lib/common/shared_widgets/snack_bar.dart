import 'package:flutter/material.dart';
import 'package:kmsuit_app/common/theme/app_colors.dart';

class SuitSnackBar extends SnackBar {
  final String title;

  SuitSnackBar({
    Key? key,
    required this.title,
    Color backgroundColor = AppColors.primaryColor,
    Color textColor = AppColors.backgroundColor,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w500,
  }) : super(
          key: key,
          backgroundColor: backgroundColor,
          content: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        );
}
