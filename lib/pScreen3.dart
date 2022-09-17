import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class pscreen3 extends StatelessWidget {
  String? name;
  pscreen3(this.name, {Key? key}) : super(key: key);
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text("Hi, ${name.toString()}",
                style: const TextStyle(
                    color: Color.fromARGB(255, 13, 4, 142),
                    fontSize: 36,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image(
              image: AssetImage('images/cert.png'),
              height: 500,
              width: 500,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              "You have Successfully Completed Hybrid Mobile App Development",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 13, 4, 142)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              "INSTRUCTOR NAME\nPankaj Kapoor",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          //SizedBox
          Container(
            alignment: Alignment.bottomRight,
            child: Text(
              "Today's Date : ${today.day}-${today.month}-${today.year}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ));
  }
}
// void selectDate(BuildContext context) async {
  //   DateTime? pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: today,
  //       firstDate: DateTime(2000),
  //       lastDate: DateTime(2025));

  //   // print(pickedDate);
  //   if (pickedDate != null && pickedDate != today) {
  //     setState(() {
  //       today = pickedDate;
  //     });
  //   }
  // }

