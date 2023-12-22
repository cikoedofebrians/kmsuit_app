import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SuitBackButton extends StatelessWidget {
  const SuitBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
      child: InkWell(
        onTap: () => context.pop(),
        borderRadius: BorderRadius.circular(100),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            "assets/icons/left-arrow.svg",
          ),
        ),
      ),
    );
  }
}
