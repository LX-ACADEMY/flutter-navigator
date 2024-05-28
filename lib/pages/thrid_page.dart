import 'package:flutter/material.dart';
import 'package:navigation/pages/home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3rd Page'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
              (route) => route.isFirst,
            );

            // Navigator.popUntil(context, (route) {
            //   // if(route.settings.name == 'Second') {
            //   //   return true;
            //   // }

            //   if (route.isFirst) {
            //     return true;
            //   }

            //   return false;
            // });
          },
        ),
      ),
    );
  }
}
