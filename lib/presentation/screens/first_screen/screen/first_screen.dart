import 'package:flutter/material.dart';
import 'package:kmsuit_app/presentation/screens/second_screen/second_screen.dart';
import 'package:kmsuit_app/presentation/shared_widgets/button.dart';
import 'package:kmsuit_app/presentation/shared_widgets/text_field.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/background.png",
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const Spacer(),
                    Image.asset("assets/images/logo.png"),
                    const SizedBox(height: 58),
                    SysTextField(hintText: "Name", onChange: (value) {}),
                    const SizedBox(height: 22),
                    SysTextField(hintText: "Palindrome", onChange: (value) {}),
                    const SizedBox(height: 45),
                    SuitButton(title: "CHECK", onTap: () {}),
                    const SizedBox(height: 15),
                    SuitButton(
                        title: "NEXT",
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SecondScreen()));
                        }),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
