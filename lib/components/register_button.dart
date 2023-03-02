import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '../pages/registration_page.dart';

class RegisterButton extends StatelessWidget {
  final Function()? onTap;

  const RegisterButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => RegisterPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 55),
        decoration: BoxDecoration(
          color: ColorPalette.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
            "REGISTER",
            style: TextStyle(
                color: ColorPalette.accentBlack,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
