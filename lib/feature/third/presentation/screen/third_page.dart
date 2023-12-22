import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmsuit_app/common/theme/app_colors.dart';
import 'package:kmsuit_app/common/shared_widgets/appbar.dart';
import 'package:kmsuit_app/core/injector/injector.dart';
import 'package:kmsuit_app/feature/second/bloc/second_bloc.dart';
import 'package:kmsuit_app/feature/third/presentation/bloc/third_bloc.dart';
import 'package:kmsuit_app/feature/third/presentation/widgets/users_list.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key, required this.secondBloc});

  final SecondBloc secondBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                getIt<ThirdBloc>()..add(const FetchUserEvent(false))),
        BlocProvider.value(value: secondBloc),
      ],
      child: const ThirdView(),
    );
  }
}

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: SuitAppBar(title: "Third Screen"),
      body: BlocBuilder<ThirdBloc, ThirdState>(
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            onRefresh: () async =>
                context.read<ThirdBloc>().add(const FetchUserEvent(false)),
            child: state.fetchStatus.isLoading
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : state.fetchStatus.isFailed
                    ? Center(
                        child: Text(
                          state.message,
                          style: const TextStyle(
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                      )
                    : state.fetchStatus.isLoaded
                        ? const UserList()
                        : const SizedBox(),
          );
          // }
          // return const SizedBox();
        },
      ),
    );
  }
}
