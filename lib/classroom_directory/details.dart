import 'package:flutter/material.dart';

import 'detail_page1.dart';
import 'detail_page2.dart';
import 'detail_page3.dart';
import 'detail_page4.dart';
import 'detail_page5.dart';
import 'detail_page6.dart';
import 'detail_page7.dart';
import 'detail_page8.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(8, (index) {
        return Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage1()),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage2()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage3()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage4()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage5()),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage6()),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage7()),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage8()),
                  );
                  break;
              }
            },
            child: Card(
              color: Colors.primaries[index % Colors.primaries.length],
              elevation: 5,
              margin: EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    'Class $index',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}