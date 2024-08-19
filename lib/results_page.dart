import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final double bmi;

  const ResultsPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    String BMIStatus = getBMIStatus(double.parse(bmi.toStringAsPrecision(3)));
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title: const Text(
          'BMI RESULT',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    color: Colors.indigo[800]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      BMIStatus,
                      style: TextStyle(fontSize: 32, color: getBMIStatusColor(BMIStatus), fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmi.toStringAsPrecision(3),
                      style: const TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(),
                fixedSize: Size(MediaQuery.of(context).size.width, 80),
                backgroundColor: Colors.amber,
              ),
              child: const Text(
                'RE-CALCULATE',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getBMIStatus(double bmi) {
    if (bmi <= 18.4) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Normal';
    } else if (bmi >= 25.0 && bmi <= 39.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  Color getBMIStatusColor(String status) {
    switch (status) {
      case 'Underweight':
        return Colors.orangeAccent;
      case 'Normal':
        return Colors.green;
      case 'Overweight':
        return Colors.orange;
      case 'Obese':
        return Colors.red;
      default:
        Colors.transparent;
    }
    return Colors.transparent;
  }

}
