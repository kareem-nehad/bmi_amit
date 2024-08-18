import 'package:flutter/material.dart';
class CalculaterPage extends StatelessWidget {
  const CalculaterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
      height: 250,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
      ),
          ),
            ),
          ),
        ],
      ),
    );
  }
