import 'package:ace/pages/registration_page2.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../constant/colors.dart';
import '../dialogs/dialog_unsuccessful.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
final TextEditingController _fname = TextEditingController();
final TextEditingController _mname = TextEditingController();
final TextEditingController _lname = TextEditingController();
final TextEditingController _idnum = TextEditingController();

final _signUpBox = Hive.box('signUpBox');

class _RegisterPageState extends State<RegisterPage> {
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
                  height: 500,
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
                                    Icons.assignment_ind_rounded,
                                    color: ColorPalette.accentBlack,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color:  Colors.black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    String firstName = _fname.text.trim();
                                    if (firstName.isEmpty) {
                                      DialogUnsuccessful(
                                        headertext: "Input required!",
                                        subtext: "Please input your name!",
                                        textButton: "Close",
                                        callback: () {
                                          Navigator.of(context, rootNavigator: true).pop();
                                        },
                                      ).buildUnsuccessfulScreen(context);
                                      return;
                                    }
                                    //String sex = sexValue.toString();

                                    _signUpBox.put("firstName", firstName);
                                    //_signUp1Box.put("sex", sex);

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const NextPage(),
                                        ));
                                  });
                                },
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.arrow_forward_rounded,
                                  size: 50,
                                  color: ColorPalette.secondary,
                                ),
                              ),
                            ),
                           ]
                      )
                      )
                  )
              ),
            ),
      ],
    ),
    );
  }
}

