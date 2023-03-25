import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import '../constant/colors.dart';
import '../dialogs/alertdialog.dart';
import '../models/user.dart';
import '../pages/selection_page.dart';


class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  DateTime backPressedTime = DateTime.now();
  final _loginbox = Hive.box("_loginbox");
  late var fullname = _loginbox.get("User");
  String title = 'AlertDialog';
  bool tappedYes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: ColorPalette.accentBlack,
        appBar: AppBar(
          toolbarHeight: (100),
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20),
              child: IconButton(
                iconSize: 40,
                onPressed: () async {
                  final action = await AlertDialogs.yesCancelDialog(
                      context,
                      'Logout this account?',
                      'you can always come back any time.');
                  if (action == DialogsAction.yes) {
                    setState(() => tappedYes = true);
                    _loginbox.put("isLoggedIn", false);
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SelectionPage (),
                      ),
                    );
                  } else {
                    setState(() => tappedYes = false);
                  }
                },
                icon: const Icon(Icons.exit_to_app_rounded),
                color: ColorPalette.secondary,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              top: 140,
              left: 50,
              right: 50,
            ),
            child: FutureBuilder(
                future: getUser(),
                builder: (context, AsyncSnapshot<List<User>> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: CircularProgressIndicator(
                              color: ColorPalette.secondary,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Loading...",
                            style: TextStyle(
                                color: ColorPalette.secondary,
                                fontFamily: 'Lato'
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.warning_amber_rounded,
                            ),
                            Text(
                              "Something went wrong",
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  color: ColorPalette.secondary,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Please Try again.",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                color: ColorPalette.secondary,
                              ),
                            )
                          ],
                        ));
                  }
                  return Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(55)
                            ),
                            child: const Icon(
                              Icons.person_outline_rounded,
                              size: 150,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      ),
                      ),
                      child: const Text(
                      'PERSONAL INFORMATION',
                        textAlign: TextAlign.center,
                      style: TextStyle(
                      color: ColorPalette.secondary,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                      ),
                      ),
                      Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
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

                      Text(
                        snapshot.data!.first.fullname.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontFamily: 'Lato'
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Student',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Lato'
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("Student ID",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Lato'
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 35,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.200),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            snapshot.data!.first.studentid.toString(),
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Lato'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Gender",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Lato'
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 35,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.200),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            snapshot.data!.first.gender.toString(),
                            style: const TextStyle(
                                fontSize: 12, fontFamily: 'Lato'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Age",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Lato'
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 35,
                        width: 155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.200),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            snapshot.data!.first.age.toString(),
                            style: const TextStyle(
                                fontSize: 12, fontFamily: 'Lato'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("E-mail Address",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Lato'
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 35,
                        width: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.200),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            snapshot.data!.first.email.toString(),
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Lato'
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Department",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Lato'
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 35,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.200),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            snapshot.data!.first.dept.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 12, fontFamily: 'Lato'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  )
                  )
                  )
                  ]);
                }),
          ),
        )
    );
  }

  Future<List<User>> getUser() async {
    List<User> myUser = [];
    DatabaseReference databaseReference =
    FirebaseDatabase.instance.ref().child("Students/$fullname");
    try {
      await databaseReference.get().then((snapshot) {
        Map<String, dynamic> myObj = jsonDecode(jsonEncode(snapshot.value));
        User myUserObj = User.fromJson(myObj);
        myUser.add(myUserObj);
      });
      return myUser;
    } catch (error) {
      rethrow;
    }
  }
  void toast(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      width: 200,
      backgroundColor: Colors.grey,
      duration: const Duration(milliseconds: 1000),
    ));
  }
  Future<bool> _onBackButtonDoubleClicked(BuildContext context) async {
    final difference = DateTime.now().difference(backPressedTime);
    backPressedTime = DateTime.now();

    if (difference >= const Duration(seconds: 1)) {
      toast(context, "Press again to exit");
      return false;
    } else {
      SystemNavigator.pop(animated: true);
      return true;
    }
  }
}


