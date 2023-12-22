import 'package:flutter/material.dart';
import 'package:kmsuit_app/core/injector/injector.dart';
import 'package:kmsuit_app/feature/first/bloc/first_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kmsuit_app/core/routings/route.dart';
import 'package:kmsuit_app/common/shared_widgets/alert_dialog.dart';
import 'package:kmsuit_app/common/shared_widgets/button.dart';
import 'package:kmsuit_app/common/shared_widgets/text_field.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FirstBloc>(),
      child: const FirstView(),
    );
  }
}

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FirstBloc, FirstState>(
      listener: (ctx, state) {
        if (state.palindromeMessage.isNotEmpty) {
          showDialog(
            context: context,
            builder: (_) => SuitAlertDialog(message: state.palindromeMessage),
          );
        }
      },
      child: Scaffold(
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
                      SuitTextField(
                          hintText: "Name",
                          onChange: (newValue) {
                            context
                                .read<FirstBloc>()
                                .add(OnChangeNameTextEvent(newValue));
                          }),
                      const SizedBox(height: 22),
                      SuitTextField(
                          hintText: "Palindrome",
                          onChange: (newValue) {
                            context
                                .read<FirstBloc>()
                                .add(OnChangePalindromeTextEvent(newValue));
                          }),
                      const SizedBox(height: 45),
                      SuitButton(
                          title: "CHECK",
                          onTap: () {
                            context
                                .read<FirstBloc>()
                                .add(const CheckPalindromeEvent());
                          }),
                      const SizedBox(height: 15),
                      BlocBuilder<FirstBloc, FirstState>(
                        builder: (_, state) {
                          return SuitButton(
                              title: "NEXT",
                              onTap: () {
                                if (state.name.isNotEmpty) {
                                  context.pushNamed(AppRoute.second.name,
                                      pathParameters: {'name': state.name});
                                }
                              });
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
