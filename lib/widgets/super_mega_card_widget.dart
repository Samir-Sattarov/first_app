import 'package:flutter/material.dart';

import '../entity/post_horizontal_entity.dart';

class SuperMegaCardWidget extends StatelessWidget {
  final PostHorizontalEntity post;
  const SuperMegaCardWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 343,
          height: 343,
          child: Image.asset(
            post.image,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 28,
              width: 28,
              child: Image.asset(post.avatar),
            ),
           const  SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(post.name),
                Text(post.username),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
