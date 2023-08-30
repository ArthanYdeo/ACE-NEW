import 'package:ACE/classroom_directory/classroom_page1.dart';
import 'package:ACE/classroom_directory/classroom_page2.dart';
import 'package:ACE/classroom_directory/classroom_page3.dart';
import 'package:flutter/material.dart';
import 'package:ACE/models/classroom.dart';
import '../constant/colors.dart';

class Classroom extends StatefulWidget {
  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.accentBlack,
        body: ListView.builder(
            itemCount: classRoomList.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ClassRoomPage1(
                          className: classRoomList[index].className,
                        ))),
                title: Stack(
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
                            fontSize: 14,
                            color: Colors.white,
                            letterSpacing: 1),
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
            }));
  }
}
