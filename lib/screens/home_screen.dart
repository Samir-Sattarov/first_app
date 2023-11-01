import 'dart:convert';

import 'package:first_app/entity/photo_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:http/http.dart';
import '../core/api/photo_screen_api.dart';
import '../widgets/photo_widget.dart';
import '../widgets/selection_widget.dart';

class SelectionEntity {
  final String title;

  SelectionEntity(this.title);
  // final String image;
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PhotoEntity> listPhoto = [];

  @override
  void initState() {
    getPhoto();
    super.initState();
  }

  getPhoto() async {
    listPhoto.clear();

    setState(() {});
    final response = await PhotoScreenApi.getPhoto();

    print("Response $response");

    listPhoto = response;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("test"),
          actions: [
            IconButton(
              onPressed: () async {
                await getPhoto();
              },
              icon: const Icon(Icons.refresh),
            )
          ],
          elevation: 50,
        ),
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: RefreshIndicator(
            onRefresh: () async {
              await getPhoto();
            },
            child: ListView.builder(
              itemBuilder: (context, index) {
                final el = listPhoto[index];

                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: PhotoWidget(entity: el),
                );
              },
              itemCount: listPhoto.length,
            ),
          ),
        ),
      ),
    );
  }
}
