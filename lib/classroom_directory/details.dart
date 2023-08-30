import 'package:flutter/material.dart';
import '../models/classroom.dart';
import '../constant/colors.dart';
import '../classroom_directory/classroom_page1.dart';
import '../classroom_directory/classroom_page2.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: classRoomList.length,
          itemBuilder: (context, int index) {
            return GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ClassRoomPage2(
                        className: classRoomList[index].className,
                        bannerImg: classRoomList[index].bannerImg,
                      ))),
              child: Stack(
                children: [
                  Container(
                    height: 140,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.orange,
                    ),
                    child: Image(
                      image: classRoomList[index].bannerImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 30),
                    width: 220,
                    child: Text(
                      classRoomList[index].className,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 58, left: 30),
                    child: Text(
                      classRoomList[index].description,
                      style: TextStyle(
                          fontSize: 14, color: Colors.white, letterSpacing: 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 125, left: 30),
                    child: Text(
                      classRoomList[index].creator,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                          letterSpacing: 1),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 370),
                    child: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      splashColor: Colors.white54,
                      onPressed: () {},
                      iconSize: 25,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
