import 'package:flutter/material.dart';


class RegisterFirstName extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const RegisterFirstName({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<RegisterFirstName> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<RegisterFirstName> {

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'First Name',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}