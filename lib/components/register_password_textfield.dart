import 'package:flutter/material.dart';

class RegisterPassword extends StatefulWidget {
  final controller;
  final String hintText;

  const RegisterPassword({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<RegisterPassword> createState() => _StudentPasswordState();
}

class _StudentPasswordState extends State<RegisterPassword> {
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
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
