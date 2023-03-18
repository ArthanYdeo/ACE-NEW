import 'dart:convert';
import 'package:ace/models/student.dart';
import 'package:ace/pages/registration_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../constant/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../dialogs/dialog_loading.dart';
import '../dialogs/dialog_unsuccessful.dart';
import 'homescreen_page.dart';

class StudentLoginPage extends StatefulWidget {
  const StudentLoginPage({super.key});

  @override
  State<StudentLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<StudentLoginPage> {
  final TextEditingController _idnum = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final _loginbox = Hive.box("_loginbox");
  bool _hidePassword = true;

  @override
  void dispose() {
    // TODO: implement dispose
    _idnum.dispose();
    _pass.dispose();
    super.dispose();
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
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
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _idnum,
                          validator: (value) {
                            // Email RegEx Validation
                            final bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!);
                            if (value.isNotEmpty && emailValid) {
                              return null;
                            } else {
                              return "Invalid student number.";
                            }
                          },
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
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                            DialogLoading(subtext: "Logging in.")
                                .buildLoadingScreen(context);
    logIn(
    email: _idnum.text.trim(),
    password: _pass.text.trim(),
    context: context,
    ).catchError(
    (err) {
    if (err == 'user-not-found') {
    Navigator.of(context, rootNavigator: true).pop();
    DialogUnsuccessful(
    headertext: "User not found!",
    subtext: "Seems like we can't find that user.",
    textButton: "Close",
    callback: () {
    Navigator.of(context, rootNavigator: true).pop();
    },
    ).buildUnsuccessfulScreen(context);
    } else if (err == 'wrong-password') {
    Navigator.of(context, rootNavigator: true).pop();
    DialogUnsuccessful(
    headertext: "Wrong password!",
    subtext: "Whoops! You entered a wrong password!",
    textButton: "Close",
    callback: () {
    Navigator.of(context, rootNavigator: true).pop();
    },
    ).buildUnsuccessfulScreen(context);
    } else {
    Navigator.of(context, rootNavigator: true).pop();
    DialogUnsuccessful(
    headertext: err,
    subtext: "Looks like we have an error!",
    textButton: "Close",
    callback: () {
    Navigator.of(context, rootNavigator: true).pop();
    },
    ).buildUnsuccessfulScreen(context);
    }
    },
    ).then((value) {
    if (value == null) {
    Navigator.of(context, rootNavigator: true).pop();
    DialogUnsuccessful(
    headertext: "Error",
    subtext: "Please try again later!",
    textButton: "Close",
    callback: () {
    Navigator.of(context, rootNavigator: true).pop();
    },
    ).buildUnsuccessfulScreen(context);
    } else {
    Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(
    builder: (context) => const HomeScreenPage())),
    (Route<dynamic> route) => true);
    }
    });
    },
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
    ColorPalette.accentBlack,
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    ),
    ),
    ),
    child: const Text(
    "LOGIN",
    style: TextStyle(
    color: ColorPalette.secondary,
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w900,
    ),
    ),
    ),
    ),
    const SizedBox(height: 10),
    const Text(
    "or",
    style: TextStyle(
    color: ColorPalette.secondary,
    fontFamily: 'Lato',
    fontSize: 18,
    fontWeight: FontWeight.w300,
    ),
    ),
    const SizedBox(height: 10),
    SizedBox(
    width: 150,
    height: 50,
    child: ElevatedButton(
    onPressed: () {
    // Go to the signup
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const RegisterPage())),
    );
    },
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
    ColorPalette.accentBlack,
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    ),
    ),
    ),
    child: const Text(
    "SIGN UP!",
    style: TextStyle(
    color: ColorPalette.secondary,
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w900,
    ),
    ),
    ),
    ),
    ],
    ),
    ],
    ),
    );
    }

  Future logIn(
      {required String email, password, required BuildContext context}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Successfully login";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw e.code;
      } else if (e.code == 'wrong-password') {
        throw e.code;
      }
      throw e.code;
    }
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscu = !_showPassword;
    });
  }
}
