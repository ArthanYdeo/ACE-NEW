import 'package:ace/constant/colors.dart';
import 'package:flutter/material.dart';

class People3 extends StatefulWidget {
  const People3({Key? key}) : super(key: key);

  @override
  State<People3> createState() => _People3State();
}

class _People3State extends State<People3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.accentBlack,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 15, bottom: 10),
                child: const Text(
                  "Teachers",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                      letterSpacing: 1,
                      fontFamily: 'Lato'
                  ), //need to change color per
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: MediaQuery.of(context).size.width - 30,
                height: 2,
                color: Colors.orange, //need to change color per class
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const SizedBox(width: 15),
                  CircleAvatar(
                    backgroundColor: Colors.blue[200],
                    child: const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text('Gary Valenciano',
                    style: TextStyle(
                        color: ColorPalette.secondary,
                        fontFamily: 'Lato'
                    ),)
                ],
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 15, bottom: 10),
                child: const Text(
                  "Classmates",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                      letterSpacing: 1,
                      fontFamily: 'Lato'
                  ), //need to change color per
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: MediaQuery.of(context).size.width - 30,
                height: 2,
                color: Colors.orange, //need to change color per class
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const SizedBox(width: 15),
                  CircleAvatar(
                    backgroundColor: Colors.blue[200],
                    child: const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text('John Doe',
                      style: TextStyle(
                          color: ColorPalette.secondary,
                          fontFamily: 'Lato')
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}