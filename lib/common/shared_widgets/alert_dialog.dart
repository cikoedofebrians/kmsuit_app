import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmsuit_app/common/theme/app_colors.dart';

class SuitAlertDialog extends StatelessWidget {
  const SuitAlertDialog({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
        actions: [
          adaptiveAction(
            context: context,
            onPressed: () => context.pop(),
            child: const Text(
              'Close',
            ),
          ),
        ],
        content: Text(message,
            style: const TextStyle(
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 16)));
  }
}

Widget adaptiveAction(
    {required BuildContext context,
    required VoidCallback onPressed,
    required Widget child}) {
  final ThemeData theme = Theme.of(context);
  switch (theme.platform) {
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.windows:
      return TextButton(onPressed: onPressed, child: child);
    case TargetPlatform.iOS:
    case TargetPlatform.macOS:
      return CupertinoDialogAction(onPressed: onPressed, child: child);
  }
}
