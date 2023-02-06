import 'package:flutter/material.dart';

class Classroom extends StatefulWidget {
  const Classroom({Key? key}) : super(key: key);

  @override
  State<Classroom> createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.blueGrey[300],
      body: const Center(
        child: Text('',
          style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black87,
        fontSize: 25,
          ),
      ),
      )
    );
  }
}
