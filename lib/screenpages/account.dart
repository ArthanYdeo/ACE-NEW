import 'package:ace/constant/colors.dart';
import 'package:ace/pages/selection_page.dart';
import 'package:flutter/material.dart';


class Account extends StatefulWidget {

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.accentBlack,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 30),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.circular(55)
                ),
                child: const Icon(
                  Icons.person_outline_rounded,
                  size: 150,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 35),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 128, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: const Text(
                  'PERSONAL INFO',
                  style: TextStyle(
                      color: ColorPalette.secondary,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Student Name',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Lato',
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Lato',
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Phinma Email',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Student ID',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'ID Number',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Lato',
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 53,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Home Address',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Lato',
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Lato',
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 55,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Phone Number',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Lato',
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Lato',
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'College',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Lato',
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Department',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Lato',
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: const BorderRadius.horizontal(),
                        ),
                        child: const Text(
                          'Course',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Lato',
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Course',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Lato',
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
Container(
  padding: const EdgeInsets.only
    (left: 50, right: 50),
  width: 355,
  height: 50,
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     primary: Colors.white
                 ),
                onPressed: (){
                  Navigator.of(context).pop(MaterialPageRoute(builder: (BuildContext context)=>const SelectionPage()));
                },
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
),
              const SizedBox(height: 25.0,),
            ],
          ),
        ),
      ),
    );
  }
}