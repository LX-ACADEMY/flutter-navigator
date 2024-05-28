import 'package:flutter/material.dart';
import 'package:navigation/pages/thrid_page.dart';

class SecondPage extends StatefulWidget {
  final int count;

  const SecondPage({
    super.key,
    required this.count,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late int count;

  @override
  void initState() {
    count = widget.count;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, count);
          },
        ),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  count--;
                });
              },
              icon: const Icon(Icons.minimize),
            ),
            Text('$count'),
            IconButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ThirdPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
