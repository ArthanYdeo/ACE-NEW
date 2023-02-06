import 'package:flutter/material.dart';

class GenderRadioButton extends StatefulWidget {
  const GenderRadioButton({Key? key}) : super(key: key);

  @override
  State<GenderRadioButton> createState() => _GenderRadioButtonState();
}

class _GenderRadioButtonState extends State<GenderRadioButton> {

  String radioButtonItem = '';
  int id = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Gender ' + '$radioButtonItem',
                style: const TextStyle(fontSize: 15))
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Male';
                  id = 1;
                });
              },
            ),
            const Text(
              'Male',
              style:
              TextStyle(
                  fontSize: 15
              ),
            ),

            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Female';
                  id = 2;
                });
              },
            ),
            const Text(
              'Female',
              style: TextStyle(
                fontSize: 15,
              ),
            ),

          ],
        ),
      ],
    );
  }
}
