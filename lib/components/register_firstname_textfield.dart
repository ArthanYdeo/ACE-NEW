import 'package:flutter/material.dart';

class RegisterFirstName extends StatefulWidget {
  final controller;
  final String hintText;

  const RegisterFirstName({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<RegisterFirstName> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<RegisterFirstName> {
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
