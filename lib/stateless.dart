import 'package:flutter/material.dart';

class stateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          child: Center(
        child: Text(
          "Aukat mai rahke bole kar ullu ki patthi",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        
      )),

      backgroundColor: Color.fromARGB(255, 166, 115, 84),
    ));
  }
}
