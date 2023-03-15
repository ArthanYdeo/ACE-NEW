import 'package:ace/pages/selection_page.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/strings.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  String? sexValue;
  String? deptValue;
  String? ageValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorPalette.accentBlack,
        body: SafeArea(
            child: Center(
              child: Column(children: [
                const SizedBox(height: 05),
                const Icon(
                  Icons.assignment_ind_rounded,
                  color: ColorPalette.secondary,
                  size: 70,
                ),
                const SizedBox(height: 15),
                // welcome back, you've been missed!
                const Text(
                  'REGISTRATION',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 290,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: ColorPalette.secondary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child:DropdownButtonFormField(
                    dropdownColor: ColorPalette.secondary,
                    hint: const Text(
                      "GENDER",
                      style: TextStyle(
                        color: ColorPalette.hintColor,
                        fontFamily: 'Lato',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    value: sexValue,
                    isExpanded: true,
                    iconSize: 32,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: ColorPalette.accentBlack,
                    ),
                    items: ACEStrings.sex.map(buildMenuItemSex).toList(),
                    onChanged: ((sexValue) => setState(() {
                      this.sexValue = sexValue ?? "";
                    })),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 290,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: ColorPalette.secondary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child:DropdownButtonFormField(
                    dropdownColor: ColorPalette.secondary,
                    hint: const Text(
                      "AGE",
                      style: TextStyle(
                        color: ColorPalette.hintColor,
                        fontFamily: 'Lato',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    value: ageValue,
                    itemHeight: 50,
                    isExpanded: true,
                    iconSize: 32,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: ColorPalette.accentBlack,
                    ),
                    items: ACEStrings.ages.map(buildMenuItemSex).toList(),
                    onChanged: ((ageValue) => setState(() {
                      this.ageValue = ageValue ?? "";
                    })),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 290,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: ColorPalette.secondary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child:DropdownButtonFormField(
                    dropdownColor: ColorPalette.secondary,
                    hint: const Text(
                      "DEPARTMENT",
                      style: TextStyle(
                        color: ColorPalette.hintColor,
                        fontFamily: 'Lato',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    value: deptValue,
                    isExpanded: true,
                    iconSize: 32,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: ColorPalette.accentBlack,
                    ),
                    items: ACEStrings.dept.map(buildMenuItemSex).toList(),
                    onChanged: ((deptValue) => setState(() {
                      this.deptValue = deptValue ?? "";
                    })),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  width: 240,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black
                    ), onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SelectionPage()));
                  },
                    child:const Center(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            color: ColorPalette.secondary,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )
              ]
              ),
            )
        )
    );
  }
  DropdownMenuItem<String> buildMenuItemSex(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: const TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.w700,
        fontSize: 18,
        color: ColorPalette.accentBlack,
      ),
    ),
  );
}
