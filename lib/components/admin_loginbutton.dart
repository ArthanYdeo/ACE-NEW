import 'package:ace/constant/colors.dart';
import 'package:ace/pages/homescreen_page.dart';
import 'package:flutter/material.dart';

class AdminLoginButton extends StatelessWidget {
  final Function()? onTap;

  const AdminLoginButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreenPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 55),
        decoration: BoxDecoration(
          color: ColorPalette.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: ColorPalette.accentBlack,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato',
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
