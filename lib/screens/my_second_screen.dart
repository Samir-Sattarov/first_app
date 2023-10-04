import 'package:first_app/screens/my_third_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class MySecondScreen extends StatefulWidget {
  final int abc;
  const MySecondScreen({
    super.key,
    required this.abc,
  });

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Second Screen",
          style: TextStyle(),
        ),
        actions: [
          Icon(Icons.add),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome",
              style: GoogleFonts.nunito(
                color: const Color(0xff3C3B3B),
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Counter ${widget.abc}"),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (_) => const MyThirdScreen(),
            ),
            (route) => false,
          );
          // Navigator.pop(context);
        },
        child: Container(
          height: 57,
          width: 57,
          decoration: BoxDecoration(
            color: const Color(0xff6CDFC3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Icon(
              Icons.reply,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
