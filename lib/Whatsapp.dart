import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/TableRecord.dart';

class Whatsappdemo extends StatelessWidget {
  Whatsappdemo({Key? key}) : super(key: key);
  var choices = [
    "New group",
    "New broadcast",
    "Linked devices",
    "Starred messages",
    "Payment",
    "Settings"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(240, 18, 140, 126),
            title: Text("WhatsApp"),
            bottom: TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Icon(
                      Icons.photo_camera,
                      size: 25,
                    ),
                  ),
                  Tab(
                    text: "CHATS",
                  ),
                  Tab(
                    text: "STATUS",
                  ),
                  Tab(
                    text: "CALLS",
                  ),
                ]),
            actions: [
              IconButton(
                  onPressed: () {
                    print("search icon");
                  },
                  icon: Icon(Icons.search)),
              PopupMenuButton(onSelected: (String? t) {
                print("t");
              }, itemBuilder: (BuildContext context) {
                return choices.map((String myChoice) {
                  return PopupMenuItem(
                    child: Text(myChoice),
                    value: myChoice,
                  );
                }).toList();
              })
            ],
          ),
          body: TabBarView(children: [
            Center(child: Text("Camera")),
            Center(child: Text("Your Chats")),
            Center(child: Text("Status")),
            Center(
              child: Text("Calls"),
            )
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Object");
            },
            //tooltip: 'Increment',
            child: const Icon(
              Icons.add,
            ),
            backgroundColor: Color.fromARGB(240, 18, 140, 126),
          )),
    );
  }
}
