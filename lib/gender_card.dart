import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  const GenderCard({
    super.key,
  });

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  Color? inActiveColor = Colors.indigo[800];
  Color? activeColor = Colors.amber;

  String chosenGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (chosenGender != 'Male') {
                chosenGender = 'Male';
              }
            });
          },
          child: Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                color: chosenGender == 'Male' ? activeColor : inActiveColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.male_rounded,
                    size: 150,
                    color: Colors.white,
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (chosenGender != 'Female') {
                chosenGender = 'Female';
              }
            });
          },
          child: Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                color: chosenGender == 'Female' ? activeColor : inActiveColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.female_rounded,
                    size: 150,
                    color: Colors.white,
                  ),
                  Text(
                    'Female',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}