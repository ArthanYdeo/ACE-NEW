import 'package:ace/components/admin_button.dart';
import 'package:ace/components/register_button.dart';
import 'package:ace/components/selection_header.dart';
import 'package:ace/components/student_button.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.accentBlack,
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 100),
              SelectionHeader(),
              Text(
                'Academia Classroom Explorer',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900,
                    fontSize: 25),
              ),
              SizedBox(height: 50),
              StudentButton(onTap: null),
              SizedBox(height: 10),
              AdminButton(onTap: null),
              SizedBox(height: 10),
              RegisterButton(onTap: null),
            ],
          ),
        ),
      ),
    );
  }
}
