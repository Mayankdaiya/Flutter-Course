import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen0.dart';

class screen1 extends StatelessWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Go to Home"),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
