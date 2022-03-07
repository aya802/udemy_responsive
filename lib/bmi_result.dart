import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final double result;
final int age;
final bool isMale;
 BmiResult(
     {
    @required this.result,
       @required   this.isMale,
       @required   this.age,
     }) ;

  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('BMI Result'),
      ),
      body:Center(
        child:Container(
          height: 250.0,
          width: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0,),
            color: Colors.grey[400],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender: ${isMale?'Male':'Female'} ',
                style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Result: ${result.round()} ',
                style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Age: ${age}',
                style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
