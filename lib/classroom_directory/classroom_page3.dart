import '../classroom_directory/classwork.dart';
import '../constant/colors.dart';
import '../pages/homescreen_page.dart';
import 'package:flutter/material.dart';
import '../people_directory/people3.dart';
import '../stream_directory/stream3.dart';

class ClassRoomPage3 extends StatefulWidget {
  AssetImage bannerImg;
  String className;
  static const routeName = "ClassRoomPage3";
  ClassRoomPage3({required this.className, required this.bannerImg});

  @override
  State<ClassRoomPage3> createState() => _ClassRoomPage3State();
}

class _ClassRoomPage3State extends State<ClassRoomPage3> {
  int pageIndex = 0;
  final pages = [
    Stream3(),
    const Classwork(),
    const People3(),
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
              Navigator.of(context).pop(MaterialPageRoute(
                builder: (BuildContext context) => HomeScreenPage(),
              ));
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
