import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../models/student.dart';


class ConfirmButton extends StatelessWidget {
  final Function()? onTap;



  const ConfirmButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    DatabaseReference _testReference =
    FirebaseDatabase.instance.ref().child("Users/Students/");
    return GestureDetector(
      onTap: () async {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 125),
        decoration: BoxDecoration(
          color: Colors.green.shade700,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Register",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}