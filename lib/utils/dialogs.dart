import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'assets.dart';

class Dialogs {
  static Future<void> showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      useSafeArea: true,
      // barrierColor: Colors.transparent,

      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          alignment: Alignment.center,
          // shadowColor: Colors.white.withOpacity(0.5),
          contentPadding: const EdgeInsets.all(10), //Внутренний
          scrollable: true,
          actionsAlignment: MainAxisAlignment.center,
          elevation: 50,
          icon: SvgPicture.asset(Assets.tBackArrowSvg),

          content: Container(
            constraints: const BoxConstraints(
              maxWidth: 200,
              maxHeight: 300,
              minHeight: 100,
            ),

            child: SingleChildScrollView(
              child: Column(

                children: List.generate(0, (index) => Container(height: 40,width: 100,color: Colors.red,margin: const EdgeInsets.only(bottom: 10),),),
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


}
