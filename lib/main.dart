import 'package:bmi_amit/calculater_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIAPP());
}

class BMIAPP extends StatelessWidget {
  const BMIAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const Calculatorpage(),
      }
    );
  }
}

