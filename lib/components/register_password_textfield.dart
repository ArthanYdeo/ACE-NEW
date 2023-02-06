import 'package:flutter/material.dart';

class RegisterPassword extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const RegisterPassword({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<RegisterPassword> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<RegisterPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Password',
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
