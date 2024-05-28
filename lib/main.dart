import 'package:flutter/material.dart';
import 'package:navigation/pages/home_page.dart';

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

    return const MaterialApp(
      home: HomePage(),
    );
  }
}
