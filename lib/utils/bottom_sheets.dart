import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'assets.dart';

class BottomSheets {
  static Future showMyBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height / 2.5,
        minWidth: MediaQuery.of(context).size.width,
      ),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      isDismissible: false,
      enableDrag: false,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 40,
                width: 100,
                color: Colors.red,
                margin: const EdgeInsets.only(bottom: 10),
              ),
            )
          ],
        );
      },
    );
  }
}
