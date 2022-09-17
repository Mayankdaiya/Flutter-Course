import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class bottomsheetdemo extends StatelessWidget {
  const bottomsheetdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet")),
      body: Center(
          child: IconButton(
        icon: Icon(Icons.share),
        onPressed: () {
          displaybottomsheet(context);
        },
      )),
    );
  }

  void displaybottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: [
              Column(
                children: [
                  ListTile(
                    leading: Image(
                        image: NetworkImage(
                            "http://assets.stickpng.com/images/580b57fcd9996e24bc43c543.png")),
                    title: Text("Whatsapp"),
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Image(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/2048px-Instagram_icon.png")),
                    title: Text("Instagram"),
                  ),
                  Divider(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.blue,
                    ),
                    title: Text("Seeting"),
                  ),
                ],
              )
            ],
          );
        });
  }
}
