import 'package:flutter/material.dart';
import 'package:kmsuit_app/common/theme/app_colors.dart';
import 'package:kmsuit_app/common/shared_widgets/back_button.dart';

const _kCustomToolbarHeight = 60.0;

class SuitAppBar extends AppBar implements PreferredSizeWidget {
  SuitAppBar({
    super.key,
    String title = '',
    super.actions,
  }) : super(
          surfaceTintColor: Colors.transparent,
          leading: const SuitBackButton(),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            height: 27 / 18,
            color: AppColors.primaryTextColor,
          ),
          shape: const Border(
              bottom: BorderSide(width: 1, color: Color(0xFFE2E3E4))),
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
          title: Text(
            title,
            maxLines: 1,
          ),
        );

  @override
  Size get preferredSize {
    double height = _kCustomToolbarHeight;
    return Size.fromHeight(height);
  }
}
