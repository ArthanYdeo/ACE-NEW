import 'package:ace/components/student_password_fieldtext.dart';
import 'package:ace/components/studentlogin_button.dart';
import 'package:flutter/material.dart';
import '../components/register_button.dart';
import '../components/student_id_textfield.dart';

class StudentLoginPage extends StatelessWidget {
  StudentLoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),

                // logo
                Icon(
                  Icons.account_circle_rounded,
                  color: Colors.grey.shade700,
                  size: 100,
                ),
                const SizedBox(height: 50),

                // welcome back, you've been missed!
                const Text(
                  'Student Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 25),

                // username text-field
                StudentID(
                    controller: usernameController,
                    hintText: 'Email',
                    obscureText: false),

                const SizedBox(height: 10),

                // password text-field
                StudentPassword(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(height: 10),

                // forgot password
                const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 10),

                // sign in button
                const StudentLoginButton(onTap: null),

                const SizedBox(height: 7),

                // Text(
                //   '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
                //   style: TextStyle(color: Colors.grey,
                //       fontWeight: FontWeight.bold),
                // ),

                const SizedBox(height: 5),

                const Text(
                  "Doesn't have an account yet?",
                  style: TextStyle(color: Colors.black26),
                ),

                const SizedBox(height: 5),

                const RegisterButton(onTap: null)
              ],
            ),
          ),
        ) // column
        ); //scaffold
  }
}
