import 'package:ace/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:ace/models/classroom.dart';
import '../classroom_directory/detail_page1.dart';



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
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ClassRoomPage(
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
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 58, left: 30),
                      child: Text(
                        classRoomList[index].description,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 125, left: 30),
                      child: Text(
                        classRoomList[index].creator,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                            letterSpacing: 1),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 370),
                      child: IconButton(
                        icon: const Icon(
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

