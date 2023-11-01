import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => Test());

  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
