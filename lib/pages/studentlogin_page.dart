import 'dart:convert';
import 'package:ace/models/student.dart';
import 'package:ace/pages/registration_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../constant/colors.dart';
import '../dialogs/alertdialog.dart';
import 'homescreen_page.dart';

class StudentLoginPage extends StatefulWidget {
  const StudentLoginPage({super.key});

  @override
  State<StudentLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<StudentLoginPage> {
  final TextEditingController _idnum = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  // final box = Hive.box("_loginbox");
  DatabaseReference dbReference =
  FirebaseDatabase.instance.ref().child("Users/");

  bool _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorPalette.accentBlack,
      body: Stack(
        children: [
          Container(
            child: Center(
              child: Container(
                height: 410,
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
                    children: [
                      const SizedBox(height: 40),
                      const Text(
                        'Student Login',
                        style: TextStyle(
                          color: ColorPalette.accentBlack,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Lato',
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 35),
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
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: TextField(
                          controller: _pass,
                          obscureText: _hidePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              color: ColorPalette.accentBlack,
                            ),
                            hintText: 'Enter your Password',
                            hintStyle: const TextStyle(
                                fontSize: 12, color: ColorPalette.accentBlack,),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: ColorPalette.accentBlack,),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorPalette.accentBlack,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.key,
                              color: ColorPalette.accentBlack,
                            ),
                            suffixIcon: IconButton(
                              color: ColorPalette.accentBlack,
                              icon: _hidePassword
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _hidePassword = !_hidePassword;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      Container(
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.symmetric(horizontal: 55),
                        width: 355,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black
                          ),
                          onPressed: () {
                            dbReference.get().then((snapshot) {
                              for (final data in snapshot.children) {
                                if (data.key == _idnum.text) {
                                  Map<String, dynamic> myObj =
                                  jsonDecode(jsonEncode(data.value));
                                  Student myUserobj = Student.fromJson(myObj);
                                  if (myUserobj.password == _pass.text) {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        const HomeScreenPage(),
                                      ),
                                    );
                                  } else {
                                    debugPrint('Does not exist');
                                    continue;
                                  }
                                }
                              }
                            });
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
                                color: ColorPalette.accentBlack,
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
    )
    )
    ]
    )
    );
  }
}
