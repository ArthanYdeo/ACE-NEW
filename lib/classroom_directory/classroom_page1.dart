import '../classroom_directory/classwork.dart';
import '../people_directory/people.dart';
import '../stream_directory/stream.dart';
import '../constant/colors.dart';
import 'package:flutter/material.dart';

class ClassRoomPage1 extends StatefulWidget {
  String className;
  static const routeName = "ClassRoomPage1";

  ClassRoomPage1({required this.className});

  @override
  _ClassRoomPage1State createState() => _ClassRoomPage1State();
}

class _ClassRoomPage1State extends State<ClassRoomPage1> {
  int pageIndex = 0;
  final pages = [
    Stream(),
    const Classwork(),
    const People(),
  ];

  @override
  Widget build(BuildContext context) {
    String className = widget.className;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
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
