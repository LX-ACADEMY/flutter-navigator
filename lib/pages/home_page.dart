import 'package:flutter/material.dart';
import 'package:navigation/core/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Count is $count'),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () async {
                  // Navigator.pushReplacement(context, newRoute)

                  // final data = await Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     settings: const RouteSettings(
                  //       name: 'Second',
                  //     ),
                  //     builder: (context) => SecondPage(
                  //       count: count,
                  //     ),
                  //   ),
                  // );

                  Navigator.pushNamed(context, Routes.home);

                  // setState(() {
                  //   count = data;
                  // });
                },
                child: const Text('Open Counter')),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       PageRouteBuilder(
      //         opaque: false,
      //         pageBuilder: (context, animation, secondaryAnimation) {
      //           return const SecondPage();
      //         },
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
