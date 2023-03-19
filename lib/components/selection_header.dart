import 'package:flutter/material.dart';
class SelectionHeader extends StatelessWidget {
  const SelectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          height: 220,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/aceicon.png'),
            ),
          ),
        ),
      ],
    );
  }
}
