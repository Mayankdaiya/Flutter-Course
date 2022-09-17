import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen0.dart';
import 'package:flutter_application_1/screen1.dart';

class screen2 extends StatelessWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 300)),
          ElevatedButton(
            child: Text("Go to Home"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: Text("Go to Screen 1"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return screen1();
              }));
            },
          ),
        ],
      )),
    );
  }
}
