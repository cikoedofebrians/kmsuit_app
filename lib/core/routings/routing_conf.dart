import 'package:go_router/go_router.dart';
import 'package:kmsuit_app/core/routings/route.dart';
import 'package:kmsuit_app/feature/first/screen/first_page.dart';
import 'package:kmsuit_app/feature/second/bloc/second_bloc.dart';
import 'package:kmsuit_app/feature/second/screen/second_page.dart';
import 'package:kmsuit_app/feature/third/presentation/screen/third_page.dart';

class AppRouteConf {
  GoRouter get router => _router;

  late final _router = GoRouter(
    initialLocation: AppRoute.first.path,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: AppRoute.first.name,
        path: AppRoute.first.path,
        builder: (context, state) => const FirstPage(),
      ),
      GoRoute(
          name: AppRoute.second.name,
          path: AppRoute.second.path,
          builder: (context, state) {
            final params = state.pathParameters;
            return SecondPage(name: params['name'] ?? '');
          }),
      GoRoute(
        name: AppRoute.third.name,
        path: AppRoute.third.path,
        builder: (context, state) {
          return ThirdPage(secondBloc: state.extra as SecondBloc);
        },
      ),
    ],
  );
}
