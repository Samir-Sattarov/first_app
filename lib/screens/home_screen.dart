import 'package:first_app/entity/post_horizontal_entity.dart';
import 'package:first_app/widgets/super_mega_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<PostHorizontalEntity> horizontalPostList = [
    PostHorizontalEntity(
      name: "Ridhwan Nordin",
      username: "@ridzjcob",
      avatar: Assets.tFirstAvatar,
      image: Assets.tFistPostImage,
    ),
    PostHorizontalEntity(
      name: "Ridhwan Nordin",
      username: "@ridzjcob",
      avatar: Assets.tFirstAvatar,
      image: Assets.tCarImage,
    ),
    PostHorizontalEntity(
      name: "Ridhwan Nordin",
      username: "@ridzjcob",
      avatar: Assets.tFirstAvatar,
      image: Assets.tGraffity,
    ),
    PostHorizontalEntity(
      name: "Ridhwan Nordin",
      username: "@ridzjcob",
      avatar: Assets.tFirstAvatar,
      image: Assets.tFistPostImage,
    ),
    PostHorizontalEntity(
      name: "Ridhwan Nordin",
      username: "@ridzjcob",
      avatar: Assets.tFirstAvatar,
      image: Assets.tFistPostImage,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final PostHorizontalEntity post = horizontalPostList[index];

                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SuperMegaCardWidget(
                        post: post,
                      ),
                    );
                  },
                  itemCount: horizontalPostList.length,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 100,
          color: Colors.brown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 30,
                color: Colors.red,
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.red,
              ),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFF00D6),
                      Color(0xffFF4D00),
                    ],
                  ),
                  color: Colors.green,
                ),
                child: Center(
                    child: SvgPicture.asset(
                  Assets.tBackArrowSvg,
                  color: Colors.white,
                )),
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.red,
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
