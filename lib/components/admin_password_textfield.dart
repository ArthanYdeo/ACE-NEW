import 'package:flutter/material.dart';
class AdminPassword extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;

 AdminPassword({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<AdminPassword> createState() => _AdminPasswordState();
}

class _AdminPasswordState extends State<AdminPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
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