import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kmsuit_app/core/injector/injector.dart';
import 'package:kmsuit_app/core/routings/routing_conf.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouteConf>().router,
      debugShowCheckedModeBanner: false,
      title: 'KM Suitmedia App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
