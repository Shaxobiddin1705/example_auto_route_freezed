import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second page')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                await context.router.pop('This is come from Second page');
              },
              color: Colors.blue,
              minWidth: double.infinity,
              child: const Text('Back to Home page'),
            ),
          ],
        ),
      ),
    );
  }
}
