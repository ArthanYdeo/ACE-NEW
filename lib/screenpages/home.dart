import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[300],
        body: const Center(
        child:
        Text('Welcome User!' + '',
        style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black87,
        fontSize: 35,
        ),
    )
        )
    );
  }
}
