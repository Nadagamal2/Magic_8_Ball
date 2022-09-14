 import 'package:flutter/material.dart';
import 'package:magic_8_ball/main_screen.dart';


void main()
{
  runApp(MyApp(
  ));
}


class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MagicBallScreen () ,
    );
  }
}