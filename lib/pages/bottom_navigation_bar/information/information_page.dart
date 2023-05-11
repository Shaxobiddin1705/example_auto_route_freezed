import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Information Page')),
    );
  }
}
