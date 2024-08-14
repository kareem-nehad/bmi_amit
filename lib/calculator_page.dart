import 'package:flutter/material.dart';

import 'gender_card.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  double height = 150;
  double weight = 60;
  int age = 23;

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
          const GenderCard(),
          const SizedBox(height: 20),
          buildHeightContainer(context),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.indigo[800],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${weight.round()}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                          child: Icon(Icons.add),
                          style: ElevatedButton.styleFrom(shape: CircleBorder(), elevation: 10),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (weight > 30) {
                                weight--;
                              }
                            });
                          },
                          child: Icon(Icons.remove),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            elevation: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.indigo[800],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${age}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: Icon(Icons.add),
                          style: ElevatedButton.styleFrom(shape: CircleBorder(), elevation: 10),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (age > 13) {
                                age--;
                              }
                            });
                          },
                          child: Icon(Icons.remove),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            elevation: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),
            ),
            style:
                ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)), fixedSize: Size(MediaQuery.of(context).size.width, 45), backgroundColor: Colors.amber),
          )
        ],
      ),
    );
  }

  Widget buildHeightContainer(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
        color: Colors.indigo[800],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Height',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                height.round().toString(),
                style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 5),
                child: Text(
                  'CM',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          Slider(
            value: height,
            max: 220.0,
            label: height.round().toString(),
            activeColor: Colors.amber,
            inactiveColor: Colors.grey,
            onChanged: (value) {
              setState(() {
                height = value;
              });
            },
          )
        ],
      ),
    );
  }
}
