import 'package:flutter/material.dart';
import 'package:untitled1/prodact.dart';
import 'iceCreame.dart';
void main()
{
  runApp(myApp());

}

class myApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ice(),
      debugShowCheckedModeBanner: false,

    );
  }

}