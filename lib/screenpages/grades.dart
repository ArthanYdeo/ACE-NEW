import 'package:ace/constant/colors.dart';
import 'package:flutter/material.dart';

class Grades extends StatefulWidget {
  const Grades({Key? key}) : super(key: key);

  @override
  State<Grades> createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  List<Map<String, dynamic>> _subjectList = [
    {'code': 'ITE 115', 'grade': '95'},
    {'code': 'ITE 300', 'grade': '95'},
    {'code': 'ITE 302', 'grade': '95'},
    {'code': 'ITE 298', 'grade': '95'},
    {'code': 'ITE 304', 'grade': '95'},
    {'code': 'ITE 303', 'grade': '95'},
    {'code': 'ITE 031', 'grade': '95'},
  ];

  List<String> _gradeList = ['P1', 'P2', 'P3'];

  String _selectedGrade = 'P1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.accentBlack,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(9.0),
            ),
            child: DataTable(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              //dataRowHeight: 60.0, // set the height of the rows
              columns: [
                DataColumn(
                  label: Text(
                      'Subject Code',
                    style: TextStyle(color: Colors.white),),
                ),
                DataColumn(
                  label: DropdownButton<String>(
                    value: _selectedGrade,
                    items: _gradeList.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedGrade = value!;
                      });
                    },
                  ),
                ),
              ],
              rows: _subjectList.map(
                    (subject) {
                  return DataRow(cells: [
                    DataCell(Text(subject['code'])),
                    DataCell(
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(subject['grade']),
                      ),
                    ),
                  ]);
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}