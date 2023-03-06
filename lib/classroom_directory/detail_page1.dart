import 'package:flutter/material.dart';

class ClassRoomPage extends StatefulWidget {
  AssetImage bannerImg;
  String className;

  ClassRoomPage({required this.className, required this.bannerImg});

  @override
  _ClassRoomPageState createState() => _ClassRoomPageState();
}

class _ClassRoomPageState extends State<ClassRoomPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String className = widget.className;
    AssetImage bannerImg = widget.bannerImg;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black87,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text('Class Detail'),
      ),
    );
  }
}

