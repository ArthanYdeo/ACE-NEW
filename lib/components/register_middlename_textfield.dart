import 'package:flutter/material.dart';

class RegisterMiddleName extends StatefulWidget {
  final controller;
  final String hintText;

  const RegisterMiddleName({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<RegisterMiddleName> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<RegisterMiddleName> {
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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            // borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
