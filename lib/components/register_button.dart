import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../pages/registration_page.dart';

class RegisterButton extends StatelessWidget {

  final Function()? onTap;


  const RegisterButton({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    DatabaseReference _testReference =
    FirebaseDatabase.instance.ref().child("Users/Students/");

    return GestureDetector(
      onTap: () async {


        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => RegisterPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 85),
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

