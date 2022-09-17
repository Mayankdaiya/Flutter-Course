import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ListNavigation.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Tab Demo")),
      drawer: Drawer(
        child: ListView(
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
      ),
    );
  }
}
