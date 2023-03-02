import 'package:ace/components/gender_radiobutton.dart';
import 'package:ace/components/register_IDnumber_textfield.dart';
import 'package:ace/components/register_email_textfield.dart';
import 'package:ace/components/register_firstname_textfield.dart';
import 'package:ace/components/register_lastname_textfield.dart';
import 'package:ace/components/register_middlename_textfield.dart';
import 'package:ace/components/register_password_textfield.dart';
import 'package:ace/pages/selection_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _fname = TextEditingController();
  final TextEditingController _mname = TextEditingController();
  final TextEditingController _lname = TextEditingController();
  final TextEditingController _idnum = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  final bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorPalette.accentBlack,
        body: SafeArea(
            child: Center(
                child: Column(children: [
          const SizedBox(height: 05),
          const Icon(
            Icons.assignment_ind_rounded,
            color: ColorPalette.secondary,
            size: 70,
          ),
          const SizedBox(height: 15),
          // welcome back, you've been missed!
          const Text(
            'REGISTRATION',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),
          RegisterFirstName(
            controller: _fname,
            hintText: 'First Name',
          ),
          const SizedBox(height: 10),
          RegisterMiddleName(
            controller: _mname,
            hintText: 'Middle Name',
          ),
          const SizedBox(height: 10),
          RegisterLastName(
            controller: _lname,
            hintText: 'Last Name',
          ),
          const SizedBox(height: 10),
          RegisterIDNumber(
            controller: _idnum,
            hintText: 'Student Number',
          ),
          const SizedBox(height: 10),
          RegisterEmail(
            controller: _email,
            hintText: 'Email',
          ),
          const SizedBox(height: 10),
          RegisterPassword(
            controller: _pass,
            hintText: 'Password',
          ),
          const SizedBox(height: 10),

          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25),
            width: 355,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black
              ),
              onPressed: () async {
                DatabaseReference dbReference = FirebaseDatabase.instance
                    .ref()
                    .child("Students/${_fname.text}/");
                await dbReference.child("first name").set(_fname.text);
                await dbReference.child("middle name").set(_mname.text);
                await dbReference.child("last name").set(_lname.text);
                await dbReference.child("idnum").set(_idnum.text);
                await dbReference.child("email").set(_email.text);
                await dbReference.child("password").set(_pass.text);
                Navigator.of(context).pop(MaterialPageRoute(
                  builder: (BuildContext context) => const SelectionPage(),
                ));
              },
              child: const Text(
                'Sign up',
                style: TextStyle(
                    color: ColorPalette.secondary,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
          )
        ]))));
  }
}
