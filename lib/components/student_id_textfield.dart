import 'package:flutter/material.dart';

class StudentID extends StatefulWidget {
  final controller;
  final String hintText;


  const StudentID({
    super.key,
    required this.controller,
    required this.hintText,

  });

  @override
  State<StudentID> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<StudentID> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}