import 'package:flutter/material.dart';
import 'package:flutter_app8/bmi_screen.dart';

import 'bmi_result.dart';
//import 'package:flutter_app8/counter.dart';

void main() {
  runApp(
    MyApp()
  );

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: BmiScreen(),
   );


  }

}

