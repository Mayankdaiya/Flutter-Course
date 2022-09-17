import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'AnimateScreen2.dart';

class animates1 extends StatelessWidget {
  const animates1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Animate widget")),
        body: Container(
          alignment: Alignment.topCenter,
          child: GestureDetector(
              child: Hero(
                  tag: "ImageAnimation",
                  child: Image(
                    image: AssetImage('images/nature.png'),
                    height: 120,
                    width: 120,
                  )),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return animates2();
                }));
              }),
        ));
  }
}
