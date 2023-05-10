import 'package:auto_route/auto_route.dart';
import 'package:example_auto_route/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Route Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              onPressed: () async {
                final result = await context.router.navigate(const SecondRoute());
                if (context.mounted) context.router.pop('Hi');
              },
              child: const Text('Second page'))
        ],
      ),
    );
  }
}
