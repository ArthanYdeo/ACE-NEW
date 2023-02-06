import 'package:flutter/material.dart';


class RegisterLastName extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const RegisterLastName({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<RegisterLastName> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<RegisterLastName> {

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Last Name',
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