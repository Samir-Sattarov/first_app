import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final int count;
  final int currentIndex;
  const SliderWidget(
      {Key? key, required this.count, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          count,
          (index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: index == currentIndex
                    ? Colors.red
                    : Colors.brown.withOpacity(0.5),
              ),
              height: 20,
              width: 20,
            );
          },
        ),
      ],
    );
  }
}
