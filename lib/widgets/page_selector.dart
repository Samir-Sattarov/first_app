import 'package:flutter/material.dart';

class PageSelector extends StatefulWidget {
  final String name;
  const PageSelector({Key? key, required this.name}) : super(key: key);

  @override
  State<PageSelector> createState() => _PageSelectorState();
}

class _PageSelectorState extends State<PageSelector> {
  final String name ="Adams";

  bool isFirstSelection = true;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Local: $name Global: ${widget.name}"));
  }
}