import 'package:ace/components/admin_button.dart';
import 'package:ace/components/register_button.dart';
import 'package:ace/components/student_button.dart';
import 'package:flutter/material.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 50),
              ImageIcon(
                AssetImage('assets/aceicon.png'),
                size: 280,
              ),
              Text(
                'Academia Classroom Explorer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              AdminButton(onTap: null),
              SizedBox(height: 10),
              StudentButton(onTap: null),
              SizedBox(height: 10),
              RegisterButton(onTap: null),
            ],
          ),
        ),
      ),
    );
  }
}
