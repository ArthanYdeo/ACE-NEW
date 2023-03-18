import 'package:flutter/material.dart';
import '../constant/colors.dart';

class Stream extends StatefulWidget {
  const Stream({Key? key}) : super(key: key);

  @override
  State<Stream> createState() => _StreamState();
}

class _StreamState extends State<Stream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.accentBlack,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 18, top: 18, right: 18, bottom: 8),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Image(
                  image: AssetImage('assets/images/banner img/banner1.jpg'),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    hintText: 'Share with your class...',
                    hintStyle:
                    TextStyle(fontSize: 12, color: ColorPalette.secondary,),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.secondary,),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.secondary,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: ColorPalette.secondary,
                    ),
                    suffixIcon: Icon(
                      Icons.send, //the send icon
                      color: ColorPalette.secondary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 150), //gaps or space in between
              const Icon(
                Icons.library_books, //big icon
                color: Colors.grey,
                size: 75,
              ),
              const SizedBox(height: 20), //gaps or space in between
              const Text(
                'No posts yet, but check again soon',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10, //size of the letters
                ),
              ),
              const SizedBox(height: 150), //gaps or space in between
            ],
          ),
        ),
      ),
    );
  }
}