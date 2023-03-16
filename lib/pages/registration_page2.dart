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
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final bool _obscureText = true;

  String? sexValue;
  String? deptValue;
  String? ageValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorPalette.accentBlack,
      body: Stack(
        children: [
          Container(
            child: Center(
              child: Container(
                height: 520,
                width: 360,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                      color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ]
                ),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      const Icon(
                        Icons.assignment_ind_rounded,
                        color: ColorPalette.accentBlack,
                        size: 70,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'REGISTRATION',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                  Container(
                    width: 290,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: ColorPalette.hintColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child:DropdownButtonFormField(
                      dropdownColor: ColorPalette.secondary,
                      hint: const Text(
                        "GENDER",
                        style: TextStyle(
                          color: Colors.white,
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
                        color: ColorPalette.secondary,
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
                          color: ColorPalette.hintColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child:DropdownButtonFormField(
                          dropdownColor: ColorPalette.secondary,
                          hint: const Text(
                            "AGE",
                            style: TextStyle(
                              color: ColorPalette.secondary,
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
                            color: ColorPalette.secondary,
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
                          color: ColorPalette.hintColor,
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
                            color: ColorPalette.secondary,
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

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

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
