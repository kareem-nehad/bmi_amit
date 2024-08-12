import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title: const Text( 'BMI Calculator',
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 250,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.indigo[800],
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.indigo[800],
                        borderRadius: BorderRadius.circular(50)
                    ),) ]
            )
          ],
        ),

      );
  }
}
