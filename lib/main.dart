import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_flutter/widgets/about_me/about_me_page.dart';
import 'package:portfolio_flutter/widgets/education/education_page.dart';
import 'package:portfolio_flutter/widgets/experience/experience_page.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AboutMePage(),
    ),
    GoRoute(
      path: '/education',
      builder: (context, state) => const EducationPage(),
    ),
    GoRoute(
      path: '/experience',
      builder: (context, state) => const ExperiencePage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
