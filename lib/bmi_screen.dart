

import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'bmi_result.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale =true;
  double height =120.0;
  int weight= 40;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
    title:  Text('BMI Calculator'),
    ),
     body:  Column(


           children: [
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child:Row(
                children: [
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: isMale?Colors.green: Colors.grey[400],
                        ),
                        width: 150.0,

                        child:   Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         Image(
                           image: AssetImage('assets/images/pngegg (1).png'),
                           height: 90.0,
                           width: 90.0,
                         ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('MALE',
                              style: TextStyle(
                                  fontSize: 20.0,
                                fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color:isMale? Colors.grey[400]:Colors.green,
                        ),
                        child:   Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/pngegg.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('FEMALE',
                              style: TextStyle(
                                  fontSize: 20.0,
                                fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ),

            ) ,
             Expanded(


           child:     Padding(
             padding:  const EdgeInsets.symmetric(
               horizontal: 20.0
             ),
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10.0,),
                 color: Colors.grey[400],
               ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGHT',
                        style: TextStyle(
                          fontSize: 25.0,
                              fontWeight: FontWeight.bold
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text('${height.round()}',
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text('CM',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                        Slider(
                          activeColor: Colors.green,
                            inactiveColor:Colors.green[300],
                            value: height,
                            max: 220.0,
                            min: 80.0,

                            onChanged: (value){
                             setState(() {
                               height=value;
                             });
                            }
                        )
                      ],
                    ),
                   ),
           ),

             ) ,
             Expanded(
               child:Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                   children: [
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0,),
                           color: Colors.grey[400],
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('WEIGHT',
                               style: TextStyle(
                                   fontSize: 25.0,
                                   fontWeight: FontWeight.bold
                               ),),
                             Text('${weight}',
                               style: TextStyle(
                                   fontSize: 40.0,
                                   fontWeight: FontWeight.bold
                               ),),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.green,
                                    onPressed:(){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  heroTag: 'w-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.green,
                                  onPressed:(){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'w+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                             ),
                           ],
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 20.0,
                     ),
                   Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0,),
                           color: Colors.grey[400],
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('AGE',
                               style: TextStyle(
                                   fontSize: 25.0,
                                   fontWeight: FontWeight.bold
                               ),),
                             Text('${age}',
                               style: TextStyle(
                                   fontSize: 40.0,
                                   fontWeight: FontWeight.bold
                               ),),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 FloatingActionButton(
                                   backgroundColor: Colors.green,
                                   onPressed:(){
                                     setState(() {
                                       age--;
                                     });
                                   },
                                   heroTag: 'a-',
                                   mini: true,
                                   child: Icon(
                                     Icons.remove,
                                   ),
                                 ),
                                 FloatingActionButton(
                                   backgroundColor: Colors.green,
                                   onPressed:(){
                                     age++;
                                   },
                                   heroTag: 'a+',
                                   mini: true,
                                   child: Icon(
                                     Icons.add,
                                   ),
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
             ) ,
            Container(
              width: double.infinity,
              color: Colors.green,
              child: MaterialButton(
                height: 50.0,
                onPressed:(){
                  double result = weight/ pow(height/100, 2);
                  print(result.round());
                 Navigator.push(
                     context ,
                     MaterialPageRoute(
                         builder:(context) => BmiResult(
                           age: age,
                           isMale: isMale,
                           result: result,
                         ),
                     ),
                 );
                },
                child : Text(
                    'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                  ),

                ),

              ),
            )   ,
           ],
         ),




    );
  }
}

