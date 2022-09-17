import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class stackimagedemo extends StatelessWidget {
  const stackimagedemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack Positioned Image"),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/nature.png"), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                  left: 20,
                  right: 20,
                  top: 100,
                  child: Image(image: AssetImage("images/nature.png"))),
              Positioned(
                  child: Text(
                    "Nature",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 20, 109, 24)),
                  ),
                  top: 100,
                  left: 150)
            ],
          ),
        ));
  }
}
