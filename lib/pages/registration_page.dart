import 'package:ace/components/register_IDnumber_textfield.dart';
import 'package:ace/components/register_email_textfield.dart';
import 'package:ace/components/register_firstname_textfield.dart';
import 'package:ace/components/register_lastname_textfield.dart';
import 'package:ace/components/register_middlename_textfield.dart';
import 'package:ace/components/register_password_textfield.dart';
import 'package:ace/constant/strings.dart';
import 'package:ace/pages/registration_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _fname = TextEditingController();
  final TextEditingController _mname = TextEditingController();
  final TextEditingController _lname = TextEditingController();
  final TextEditingController _idnum = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorPalette.accentBlack,
        body: Stack(
        children: [
        Container(
        child: Center(
        child: Container(
        height: 520,
        width: 360,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
        Radius.circular(30),
            ),
            color: Colors.white,
            boxShadow: [
            BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 1,
    ),
    ],
    ),
            child: Center(
                child: Column(
                  children:  [
                   const SizedBox(height: 5),
                   const Icon(
                     Icons.assignment_ind_rounded,
                      color: ColorPalette.accentBlack,
                            size: 70,
                         ),
                    const SizedBox(height: 15),
                   const Text(
                        'REGISTRATION',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold),
    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: _fname,
                        decoration: const InputDecoration(
                          labelText: 'First Name',
                          labelStyle: TextStyle(
                            color: ColorPalette.accentBlack,
                          ),
                          hintText: 'Enter your First Name',
                          hintStyle:
                          TextStyle(fontSize: 12, color: ColorPalette.accentBlack,),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorPalette.accentBlack,),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorPalette.accentBlack,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: ColorPalette.accentBlack,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: _mname,
                        decoration: const InputDecoration(
                          labelText: 'Middle Name',
                          labelStyle: TextStyle(
                            color: ColorPalette.accentBlack,
                          ),
                          hintText: 'Enter your Middle Name',
                          hintStyle:
                          TextStyle(fontSize: 12, color: ColorPalette.accentBlack,),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorPalette.accentBlack,),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorPalette.accentBlack,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: ColorPalette.accentBlack,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: _lname,
                        decoration: const InputDecoration(
                          labelText: 'Last Name',
                          labelStyle: TextStyle(
                            color: ColorPalette.accentBlack,
                          ),
                          hintText: 'Enter your Last Name',
                          hintStyle:
                          TextStyle(fontSize: 12, color: ColorPalette.accentBlack,),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorPalette.accentBlack,),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorPalette.accentBlack,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: ColorPalette.accentBlack,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: _idnum,
                        decoration: const InputDecoration(
                          labelText: 'Student Number',
                          labelStyle: TextStyle(
                            color: ColorPalette.accentBlack,
                          ),
                          hintText: 'Enter your Student Number',
                          hintStyle:
                          TextStyle(fontSize: 12, color: ColorPalette.accentBlack,),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorPalette.accentBlack,),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorPalette.accentBlack,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: ColorPalette.accentBlack,
                          ),
                        ),
                      ),
                    ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 35, right: 35),
                width: 355,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black
                  ),

                    onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => NextPage()));
                },
                  child:const Center(
                    child: Text(
                        "NEXT",
                        style: TextStyle(
                            color: ColorPalette.secondary,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                    )
                  )
                )
              )
                        ]
                    )
                  )

                ),
    ),
        ),
   ]
        ),
    );

  }
  }