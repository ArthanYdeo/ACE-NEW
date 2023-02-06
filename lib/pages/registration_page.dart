import 'package:ACE/components/gender_radiobutton.dart';
import 'package:ACE/components/register_IDnumber_textfield.dart';
import 'package:ACE/components/register_email_textfield.dart';
import 'package:ACE/components/register_firstname_textfield.dart';
import 'package:ACE/components/register_lastname_textfield.dart';
import 'package:ACE/components/register_middlename_textfield.dart';
import 'package:ACE/components/register_password_textfield.dart';
import 'package:ACE/components/register_submitbutton.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/student.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final idnumController = TextEditingController();
  final emailController = TextEditingController();
  final firstnameController = TextEditingController();
  final middlenameController = TextEditingController();
  final lastnameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    DatabaseReference _testReference =
    FirebaseDatabase.instance.ref().child("Users/Students/");

    return Scaffold(
        backgroundColor: Colors.blueGrey[300],
      body: SafeArea(
        child:Center(
        child:Column(
          children:  [
            const SizedBox(height: 05),
            const Icon(
                Icons.assignment_ind_rounded,
              size: 70,
            ),
            const SizedBox(height: 15),
            // welcome back, you've been missed!
            const   Text(
              'Registration',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const  SizedBox(height: 25),
           RegisterFirstName(
                controller: firstnameController,
                hintText: 'First Name',
                obscureText: false),
            const  SizedBox(height: 10),
             RegisterMiddleName(
                controller: middlenameController,
                hintText: 'Middle Name',
                obscureText: false),
            const  SizedBox(height: 10),
            RegisterLastName(
                controller: lastnameController,
                hintText: 'Last Name',
                obscureText: false),
            const  SizedBox(height: 10),
             RegisterIDNumber(
                controller: idnumController,
                hintText: 'IDnum',
                obscureText: false),
            const SizedBox(height: 10),
            RegisterEmail(
                controller: emailController ,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(height: 10),
            RegisterPassword(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true),
            const SizedBox(height: 10),
            const GenderRadioButton(),
            const SizedBox(height: 10),

            ConfirmButton(
                onTap: (){
                }
            ),


          ],
        )
        )
      )
      );

  }
}
