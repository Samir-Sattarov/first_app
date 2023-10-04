
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class MyThirdScreen extends StatefulWidget {

  const MyThirdScreen({super.key,  });

  @override
  State<MyThirdScreen> createState() => _MyThirdScreenState();
}

class _MyThirdScreenState extends State<MyThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Third Screen", style: TextStyle(
        ),),
        actions: [
          Icon(Icons.add),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text("Welcome", style: GoogleFonts.nunito(
              color: const Color(0xff3C3B3B),
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),),


          ],
        ),

      ),

    );
  }
}
