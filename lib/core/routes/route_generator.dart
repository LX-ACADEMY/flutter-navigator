import 'package:flutter/material.dart';
import 'package:navigation/core/routes/routes.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/second_page.dart';
import 'package:navigation/pages/thrid_page.dart';

class RouteGenerator {
  static String getInitialRoute() {
    return Routes.home;
  }

  static Route<dynamic> generate(RouteSettings settings) {
    return switch (settings.name) {
      Routes.home => MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      Routes.second => MaterialPageRoute(
          builder: (context) => const SecondPage(
            count: 0,
          ),
        ),
      _ => MaterialPageRoute(
          builder: (context) => const ThirdPage(),
        ),
    };
  }
}
