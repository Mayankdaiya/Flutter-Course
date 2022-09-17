import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class animates2 extends StatelessWidget {
  const animates2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 2")),
      body: SafeArea(
          child: GestureDetector(
        child: Hero(
            tag: "AnimateScreen2",
            child: Image(
              image: AssetImage("images/nature.png"),
              height: 400,
              width: 400,
            )),
      )),
    );
  }
}
