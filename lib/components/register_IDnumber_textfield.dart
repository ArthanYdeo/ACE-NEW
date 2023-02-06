import 'package:flutter/material.dart';


class RegisterIDNumber extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const RegisterIDNumber({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<RegisterIDNumber> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<RegisterIDNumber> {

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'ID Number (XX-XXXX-XXXXXX)',
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