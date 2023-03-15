import 'package:ace/classroom_directory/classwork.dart';
import 'package:ace/classroom_directory/people.dart';
import 'package:ace/classroom_directory/stream.dart';
import 'package:ace/constant/colors.dart';
import 'package:ace/pages/homescreen_page.dart';
import 'package:flutter/material.dart';

class ClassRoomPage extends StatefulWidget {
  AssetImage bannerImg;
  String className;

  ClassRoomPage({required this.className, required this.bannerImg});

  @override
  _ClassRoomPageState createState() => _ClassRoomPageState();
}

class _ClassRoomPageState extends State<ClassRoomPage> {
  int pageIndex = 0;
  final pages = [
    Stream(),
    const Classwork(),
    const People(),
  ];

  @override
  Widget build(BuildContext context) {
    String className = widget.className;
    AssetImage bannerImg = widget.bannerImg;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(MaterialPageRoute(builder:
                  (BuildContext context) => HomeScreenPage(),
                  )
                );
              },
            icon: Icon(Icons.arrow_back),
        color: ColorPalette.accentBlack,
        ),
      ),
      body: pages[pageIndex],
        bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: ColorPalette.secondary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                  Icons.stream,
                  color: Colors.black,
                  size: 35,
                )
                    : const Icon(
                  Icons.stream_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                  Icons.article,
                  color: Colors.black,
                  size: 35,
                )
                    : const Icon(
                  Icons.article_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                  Icons.people,
                  color: Colors.black,
                  size: 35,
                )
                    : const Icon(
                  Icons.people_outline,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ],
          ),
        ));
  }
}

