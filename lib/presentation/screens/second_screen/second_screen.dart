import 'package:flutter/material.dart';
import 'package:kmsuit_app/core/theme/app_colors.dart';
import 'package:kmsuit_app/presentation/shared_widgets/appbar.dart';
import 'package:kmsuit_app/presentation/shared_widgets/button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: SuitAppBar(
        title: 'Second Screen',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            const SizedBox(height: 4),
            Text(
              "John Doe",
              style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Selected User Name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 20),
              child: SuitButton(title: "Choose a User", onTap: () {}),
            )
          ],
        ),
      ),
    );
    // return Scaffold(

    //     appBar: AppBar(
    //   leading: InkWell(
    //     onTap: () => Navigator.pop(context),
    //     child: Icon(
    //       Icons.navigate_before_rounded,
    //       color: AppColors.accentColor,
    //     ),
    //   ),
    //   shape:
    //       const Border(bottom: BorderSide(color: Color(0xFFE2E3E4), width: 1)),
    // ));
  }
}
