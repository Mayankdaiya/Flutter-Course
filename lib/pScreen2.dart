import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pScreen3.dart';

class pscreen2 extends StatefulWidget {
  pscreen2({Key? key}) : super(key: key);

  @override
  State<pscreen2> createState() => _pscreen2State();
}

class _pscreen2State extends State<pscreen2> {
  String? _nameError = null;

  TextEditingController Name = TextEditingController();

  TextEditingController _RController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              maxLength: 25,
              controller: Name,
              decoration: InputDecoration(
                errorText: _nameError,
                labelText: "Name",
                hintText: "Enter Student Name",
                labelStyle: TextStyle(
                  fontSize: 22,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              keyboardType: TextInputType.name,
            ),
            TextField(
              maxLength: 20,
              controller: _RController,
              decoration: InputDecoration(
                errorText: _nameError,
                labelText: "Email",
                hintText: "Enter Your Email ID",
                labelStyle: TextStyle(
                  fontSize: 22,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              //keyboardType: TextInputType.text,
            ),
            Container(
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (Name.text.length < 3)
                          _nameError = "Enter at least 3 character";
                        else
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            String name = Name.text;
                            return pscreen3(name);
                          }));
                      });
                    },

                    //print("Name: " + _nameController.text);

                    child: Text("Login")))
          ],
        ),
      ),
    );
  }
}
