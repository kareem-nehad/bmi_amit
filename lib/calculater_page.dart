import 'package:flutter/material.dart';

class Calculatorpage extends StatelessWidget {
  const Calculatorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title: const Text(
            'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.indigo[800],
                  borderRadius: BorderRadius.circular(70)
                ),
              ),
              Container(
                height: 250,
                width: 180,
                color: Colors.indigo[800],
              )
            ],
          )
        ],
      )
    );
  }
}
