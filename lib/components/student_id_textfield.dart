import 'package:flutter/material.dart';

class StudentID extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const StudentID({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<StudentID> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<StudentID> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Student ID No. (XX-XXXX-XXXXXX)',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}