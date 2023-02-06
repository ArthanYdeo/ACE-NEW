import 'package:flutter/material.dart';
import '../pages/adminlogin_page.dart';

class AdminButton extends StatelessWidget {

  final Function()? onTap;

  const AdminButton({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const AdminLoginPage()));
    },
    child: Container(
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(horizontal: 55),
    decoration: BoxDecoration(
    color: Colors.lightBlue[900],
    borderRadius: BorderRadius.circular(8),
    ),
    child: const Center(
    child: Text(
    "Administrator",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    ),
    ),
    ),
    );
  }
}
