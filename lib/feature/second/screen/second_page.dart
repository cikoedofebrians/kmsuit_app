import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmsuit_app/core/injector/injector.dart';
import 'package:kmsuit_app/common/theme/app_colors.dart';
import 'package:kmsuit_app/core/routings/route.dart';
import 'package:kmsuit_app/feature/second/bloc/second_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmsuit_app/common/shared_widgets/appbar.dart';
import 'package:kmsuit_app/common/shared_widgets/button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SecondBloc>(),
      child: SecondView(
        name: name,
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  const SecondView({super.key, required this.name});

  final String name;
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
              name,
              style: const TextStyle(
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            const Spacer(),
            BlocBuilder<SecondBloc, SecondState>(
              builder: (context, state) {
                return Align(
                  alignment: Alignment.center,
                  child: Text(
                    state.name.isEmpty ? "Selected User Name" : state.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                );
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 20),
              child: SuitButton(
                title: "Choose a User",
                onTap: () {
                  context.pushNamed(AppRoute.third.name,
                      extra: context.read<SecondBloc>());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
