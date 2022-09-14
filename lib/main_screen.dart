import 'package:flutter/material.dart';
import 'dart:math';

class MagicBallScreen extends StatefulWidget {
  @override
  State<MagicBallScreen> createState() => _MagicBallScreenState();
}

class _MagicBallScreenState extends State<MagicBallScreen> {
   int ballNumber=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor:  Colors.blue[800],

        title: Center(
          child: Text(
            'Ask Me Anythinng',
            style: TextStyle(
              fontSize: 24.0,
            ),

          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    ballNumber=Random().nextInt(5)+1;

                  });

                },
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                  'assets/images/ball$ballNumber.png',
          ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
