import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius:  BorderRadius.circular(55)
                ),
                child: const Icon(
                  Icons.person_outline_rounded,
                  size: 150,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 55),
                padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 5),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: const Text(
                  'Personal Info',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 55),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
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
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 13,
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
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(
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
                            fontSize: 16.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'ID Number',
                        style: TextStyle(
                          fontSize: 13,
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
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 13,
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
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Department',
                        style: TextStyle(
                          fontSize: 13,
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
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Course',
                        style: TextStyle(
                          fontSize: 13,
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
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      const Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),

              ElevatedButton(
                onPressed: () {

                  // Logout action
                },
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
    );
  }
}