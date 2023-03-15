import 'package:flutter/material.dart';

import '../components/register_firstname_textfield.dart';
import '../components/register_middlename_textfield.dart';
import '../constant/colors.dart';

class Stream extends StatefulWidget {
   Stream({super.key});

  final TextEditingController _fname = TextEditingController();
  final TextEditingController _mname = TextEditingController();

  @override
  State<Stream> createState() => _StreamState();
}

class _StreamState extends State<Stream> {
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
    controller: null,
    hintText: 'First Name',
    ),
    const SizedBox(height: 10),
    RegisterMiddleName(
    controller: null,
    hintText: 'Middle Name',
    )
        ]
    )
    )
    ),
    );
  }
}
