import 'package:ace/components/student_password_fieldtext.dart';
import 'package:ace/constant/colors.dart';
import 'package:ace/pages/homescreen_page.dart';
import 'package:ace/pages/registration_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../components/student_id_textfield.dart';
import 'dart:convert';
import '../dialogs/alertdialog.dart';
import '../models/student.dart';


class StudentLoginPage extends StatelessWidget {
  StudentLoginPage({super.key});

  // text editing controllers
  final TextEditingController _idnum = TextEditingController();
  final TextEditingController _pass = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorPalette.accentBlack,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),

                // logo
                const Icon(
                  Icons.account_circle_rounded,
                  color: ColorPalette.secondary,
                  size: 100,
                ),
                const SizedBox(height: 50),

                // welcome back, you've been missed!
                const Text(
                  'STUDENT LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900,
                      fontSize: 25),
                ),
                const SizedBox(height: 25),
                // username text-field
                StudentID(
                    controller: _idnum, hintText: 'Student Number',),
                const SizedBox(height: 10),
                // password text-field
                StudentPassword(
                    controller: _pass, hintText: 'Password',),
                const SizedBox(height: 10),
                // forgot password
                const SizedBox(height: 10),
                //Sign in button
                Container(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  width: 355,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black
                    ),
                    onPressed:() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const HomeScreenPage()));
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                          fontFamily: 'Lato',
                          fontSize: 14),
                    ),
                  ),
                ),
             const SizedBox(
               height: 10,
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const Text(
            "Don't have an account? ",
              style: TextStyle(
                  color: ColorPalette.secondary,
                  fontFamily: 'Lato',
                  fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                    RegisterPage(),
                  ),
                );
              },
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                      fontSize: 10,
                    fontFamily: 'Lato',
                  ),
                ),
                onPressed: () {Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          RegisterPage(),
                    ),
                );
                },
                child: const Text('Sign Up'),
              ),
            ),
              ],
            ),
              ],
            ),
          ),
        ),
    );
  }
}
