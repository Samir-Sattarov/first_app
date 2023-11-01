import 'package:first_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SelectionWidget extends StatelessWidget {
  final SelectionEntity entity;
  final bool isSelected;
  const SelectionWidget(
      {Key? key, required this.entity, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          color:Colors.brown,
        ),
        isSelected ?Icon(Icons.check) : SizedBox(),
      ],
    );
  }
}
