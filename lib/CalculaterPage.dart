import 'package:flutter/material.dart';
class CalculaterPage extends StatelessWidget {
  const CalculaterPage ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator' , style: TextStyle(
          backgroundColor: Color(0xFFFFFF),
        ),),
        ),centerTitle: true ,
        backgroundColor:Color(0x6F9DFFFF),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 250,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              Container(
                height: 250,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }




}