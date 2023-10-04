import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/button_widget.dart';
import 'my_second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(),
        ),
        actions: [
          Icon(Icons.add),
          Icon(Icons.add),
          Icon(Icons.add),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "Welcome",
            //   style: GoogleFonts.nunito(
            //     color: const Color(0xff3C3B3B),
            //     fontSize: 48,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            //
            // Text("Counter $_counter"),
            // Container(
            //   height: 195,
            //   width: 274,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(21),
            //     color: Colors.red,
            //   ),
            //   clipBehavior: Clip.hardEdge,
            //   child: Image.asset(
            //     'assets/images/image.jpg',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // const SizedBox(height: 10),
            // // Image.asset('assets/images/image.jpg'),
            // //
            // const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // GestureDetector(
                //   onTap: () {
                //
                //   },
                //   child: Container(
                //     height: 80,
                //     width: 113,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(7),
                //       color: Colors.red,
                //     ),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: () {
                //
                //   },
                //   child: Container(
                //     height: 80,
                //     width: 113,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(7),
                //       color: Colors.red,
                //     ),
                //   ),
                // ),

                ButtonWidget(onTap: () {
print("button first ");
                },title: 'First',),

                ButtonWidget(onTap: () {
                  print("button second ");
                  print("button second ");
                  print("button second ");
                  print("button second ");
                  print("button second ");
                  print("button second ");
                  print("button second ");
                  print("button second ");
                  print("button second ");

                }, title: 'Second',),
              ],
            ),
          ],
        ),
      ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           GestureDetector(
//             onTap: () {
//               print("Hello world!!");
//              _incrementCounter()
// ;            },
//             child: Container(
//               height: 57,
//               width: 57,
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: const Center(
//                 child: Icon(
//                   Icons.add,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           GestureDetector(
//             onTap: () {
//               print("Hello world!!");
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) =>   MySecondScreen(abc: _counter,),
//                 ),
//               );
//               // Navigator.pop(context);
//             },
//
//
//             child: Container(
//               height: 57,
//               width: 57,
//               decoration: BoxDecoration(
//                 color: const Color(0xff6CDFC3),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: const Center(
//                 child: Icon(
//                   Icons.reply,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
    );
  }
}

