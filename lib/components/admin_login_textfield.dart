import 'package:flutter/material.dart';

class AdminID extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const AdminID({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<AdminID> createState() => _AdminIDState();
}

class _AdminIDState extends State<AdminID> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'User',
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