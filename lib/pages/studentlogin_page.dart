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

  final TextEditingController _userTEC = TextEditingController();
  final TextEditingController _passTEC = TextEditingController();
  final _loginbox = Hive.box("_loginbox");
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
                                controller: _userTEC,
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
                                controller: _passTEC,
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
                                  dbReference.get().then((snapshot) {
                                    for (final data in snapshot.children) {
                                      if (data.key == _userTEC.text) {
                                        Map<String, dynamic> myObj =
                                        jsonDecode(jsonEncode(data.value));
                                        Student myUserobj = Student.fromJson(myObj);
                                        if (myUserobj.password == _passTEC.text) {
                                          _loginbox.put("isLoggedIn", true);
                                          _loginbox.put("Student", _userTEC.text);
                                          Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                              const HomeScreenPage(),
                                            ),
                                          );
                                        } else {
                                          showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              actions: [
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                    elevation: 0,
                                                    minimumSize:
                                                    const Size(125.0, 45.0),
                                                    backgroundColor:
                                                    const Color(0xFF579981),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(14),
                                                    ),
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(DialogsAction.yes),
                                                  child: const Text(
                                                    'confirm',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              ],
                                              title: const Text(
                                                'Login Warning',
                                                style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    color: Color(0xFF579981),
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              contentPadding:
                                              const EdgeInsets.all(20.0),
                                              content: const Text(
                                                'Wrong username or password',
                                                style: TextStyle(
                                                    fontFamily: 'Lato',
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.normal),
                                              ),
                                            ),
                                          );
                                        }
                                      } else {
                                        debugPrint('Does not exist');
                                        continue;
                                      }
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
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  "Don't have an account? ",
                                  style: TextStyle(color: Colors.black, fontSize: 12),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                        const RegisterPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ),
            ],
        ),
    );
  }
}
