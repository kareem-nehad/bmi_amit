import 'package:flutter/material.dart';

class CalculaterPage extends StatelessWidget {
  const CalculaterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF6F9DFF),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              genderButton(
                icon: Icons.male,
                gender: 'Male',
              ),
              genderButton(
                icon: Icons.female,
                gender: 'Female',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget genderButton({required IconData icon, required String gender}) {
    return Container(
      height: 250,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 100,
            color: Colors.white,
          ),
          SizedBox(height: 20),
          Text(
            gender,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
