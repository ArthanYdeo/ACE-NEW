import 'package:ace/components/admin_button.dart';
import 'package:ace/components/admin_login_textfield.dart';
import 'package:ace/components/admin_password_textfield.dart';
import 'package:flutter/material.dart';

import '../components/admin_loginbutton.dart';


class AdminLoginPage extends StatelessWidget {
  const AdminLoginPage({Key? key}) : super(key: key);

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
                  'Administrator Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 25),

                // username text-field
                const AdminID(
                    controller: null,
                    hintText: 'User',
                    obscureText: false),

                const SizedBox(height: 10),

                // password text-field
                AdminPassword(
                    controller: null,
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
                const AdminLoginButton(onTap: null),

                const SizedBox(height: 7),

                // Text(
                //   '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
                //   style: TextStyle(color: Colors.grey,
                //       fontWeight: FontWeight.bold),
                // ),

                const SizedBox(height: 5),

              ],
            ),
          ),
        ) // column
    ); //scaffold
  }
}