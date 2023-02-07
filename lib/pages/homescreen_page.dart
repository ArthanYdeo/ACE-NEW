import 'package:ACE/screenpages/account.dart';
import 'package:ACE/screenpages/grades.dart';
import 'package:flutter/material.dart';
import '../screenpages/classroom.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int pageIndex = 0;
  final pages = [
    Classroom(),
    const Grades(),
    Account(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: pages[pageIndex],
        bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.teal,
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
            icon: pageIndex == 0?
            const Icon(
              Icons.auto_stories,
              color: Colors.white,
              size: 35,)
            : const Icon(
                Icons.auto_stories_outlined,
                color: Colors.white,
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
            Icons.auto_awesome,
            color: Colors.white,
            size: 35,
          )
              : const Icon(
            Icons.auto_awesome_outlined,
            color: Colors.white,
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
            Icons.person,
            color: Colors.white,
            size: 35,
          )
              : const Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 35,
          ),
        ),
      ],
    ),
        )
    );
  }
}
