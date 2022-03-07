

import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter =1;
@override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextButton(
                onPressed:(){
                  setState(() {
                    counter--;
                    print(counter);
                  });

                },
                child:Text('MINUS')
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:  Text(
                '$counter',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            TextButton(
                onPressed:(){
                 setState(() {
                   counter++;
                   print(counter);
                 });
                },
                child:Text('PLUS')
            ),
          ],
        ),
      )

    );
  }
}
