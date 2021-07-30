
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

 final bool isMale;
 final int result;
 final int age;
 final int weight;

  BMIResultScreen({
    @required this.result,
    @required this.isMale,
    @required this.age,
    @required this.weight,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${ isMale ? 'Male' : 'Female'}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),     // Gender
            Text(
              'Age : $age',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),    // Age
            Text(
              'Weight : $weight',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),  // Result
            Text(
              'Result : $result',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ), // Weight
          ],
        ),
      ),
    );

  }
}
