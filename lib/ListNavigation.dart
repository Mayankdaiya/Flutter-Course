import 'package:flutter/material.dart';

class ListNavigationDemo extends StatelessWidget {
  String title = "";
  String sub = "";
  ListNavigationDemo({Key? key, this.title = "", this.sub = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(child: Text("This is $sub")),
      ),
    );
  }
}
