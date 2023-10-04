import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function() onTap;
  final String title;
  const ButtonWidget({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Container(
        height: 80,
        width: 113,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.blue,
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
