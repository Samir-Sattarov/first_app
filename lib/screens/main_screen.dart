import 'package:first_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> listScreen = [
    const HomeScreen(title: 'test',
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.purple,
    ),
  ];

  int currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[currentScreen],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _item(0),
              _item(1),
              _item(2),
              _item(3),
            ],
          ),
        ),
      ),
    );
  }

  _item(int currentIndex) {
    return GestureDetector(
      onTap: () => setState(() {
        currentScreen = currentIndex;
      }),
      child: Container(
        height: 30,
        width: 30,
        color: Colors.blueGrey,
      ),
    );
  }
}
