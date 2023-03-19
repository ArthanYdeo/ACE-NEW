import 'package:ace/pages/homescreen_page.dart';
import 'package:ace/pages/selection_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

bool? userLoggedIn;
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  var _loginbox = await Hive.openBox("_loginbox");
  userLoggedIn = await _loginbox.get("isLoggedIn");
  userLoggedIn ??= false;


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: userLoggedIn! ? const HomeScreenPage() : const SelectionPage(),

    );
  }
}
