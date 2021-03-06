import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter111/modules/bmi_app/bmi_result/bmi_result_Screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  bool isMale = true;
  double height = 120;
  int age = 20;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(

              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                          isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/967172.png'),
                                height: 90,
                                width: 90,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'MALE',
                                style:
                                    TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale? Colors.blue : Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(

                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                          isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('images/967164.png'),
                                height: 90,
                                width: 90,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'FEMALE',
                                style:
                                TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                              color: !isMale? Colors.blue : Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style:
                            TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'CM',
                            style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style:
                              TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$age',
                              style:
                              TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  heroTag: 'age-',
                                    child: Icon(Icons.remove),
                                    mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style:
                              TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$weight',
                              style:
                              TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight+',
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(
                height: 50,
                onPressed: ()
                {
                  double result = weight / pow(height / 100, 2);
                  print(result.round());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMIResultScreen(
                          result: result.round(),
                          isMale: isMale,
                          age: age,
                          weight: weight,
                        ),
                      ));
                },
                child: Text('CALCULATE',style: TextStyle(fontSize: 25,color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context) => BMIResultScreen(
                            age: age,
                            isMale: isMale,
                            result: result.round(),
                          ),
                    )
                  );
* */