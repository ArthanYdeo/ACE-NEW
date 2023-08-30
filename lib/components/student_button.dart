import '../pages/studentlogin_page.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';

class StudentButton extends StatelessWidget {
  final Function()? onTap;

  const StudentButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => StudentLoginPage()));
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
            "STUDENT",
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
