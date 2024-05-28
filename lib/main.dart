import 'package:flutter/material.dart';
import 'package:navigation/core/routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     floatingActionButton: Builder(builder: (context) {
    //       return FloatingActionButton(
    //         onPressed: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => const SecondPage(),
    //             ),
    //           );
    //         },
    //         child: const Icon(Icons.add),
    //       );
    //     }),
    //   ),
    // );

    return MaterialApp(
      // home: HomePage(),
      initialRoute: RouteGenerator.getInitialRoute(),
      onGenerateRoute: RouteGenerator.generate,
    );
  }
}
