import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:example_auto_route/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
            child: ElevatedButton(
          onPressed: () => context.router.navigate(const ImagesRoute()),
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 46),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          child: const Text('Go Images Page'),
        )),
      ),
    );
  }
}
