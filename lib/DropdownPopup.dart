import 'package:flutter/material.dart';

class MenuDemo extends StatefulWidget {
  const MenuDemo({Key? key}) : super(key: key);

  @override
  State<MenuDemo> createState() => _MenuDemoState();
}

class _MenuDemoState extends State<MenuDemo> {
  var cities = ["Delhi", "Mumbai", "Kolkatta", "Chandigrh", "Banglore"];
  var firstCity = "Delhi";
  var choices = [
    "Share",
    "History",
    "Bookmarks",
    "Manage Accounts",
    "Settings",
    "Exit"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Google"),
          backgroundColor: Color.fromARGB(255, 12, 115, 199),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 19),
              child: const Text(
                "Help",
                style: TextStyle(fontSize: 16),
              ),
            ),
            IconButton(
                onPressed: () {
                  print("Helped Icon Clicked");
                },
                icon: Icon(Icons.help)),
            PopupMenuButton(onSelected: (String? newItem) {
              print(newItem);
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
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(100),
                child: Image(image: AssetImage('images/google.png')),
              ),
              Text(
                "Select Your City",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 171, 168, 168)),
              ),
              DropdownButton(
                items: cities.map((String dropDownItems) {
                  return DropdownMenuItem(
                    child: Text(
                      dropDownItems,
                      style: TextStyle(
                          fontSize: 22,
                          color: (firstCity == dropDownItems)
                              ? Color.fromARGB(255, 26, 123, 203)
                              : Colors.black),
                    ),
                    value: dropDownItems,
                  );
                }).toList(),
                onChanged: (String? newItem) {
                  setState(() {
                    firstCity = newItem!;
                  });
                },
                value: firstCity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
