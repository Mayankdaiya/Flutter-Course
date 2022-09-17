import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/ListNavigation.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile Demo"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mayank"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListNavigationDemo(
                  title: "Mayank",
                  sub: "Developer",
                );
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Dhruv"),
            subtitle: Text("Coder"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListNavigationDemo(
                  title: "Dhruv",
                  sub: "Coder",
                );
              }));
            },
          )
        ],
      ),
    );
  }
}
