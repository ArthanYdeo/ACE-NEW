import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '../pages/adminlogin_page.dart';

class AdminButton extends StatelessWidget {
  final Function()? onTap;

  const AdminButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => AdminLoginPage()));
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
            "ADMINISTRATOR",
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
