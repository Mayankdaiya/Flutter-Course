import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class firebasedemo extends StatefulWidget {
  firebasedemo({Key? key}) : super(key: key);

  @override
  State<firebasedemo> createState() => _firebasedemoState();
}

class _firebasedemoState extends State<firebasedemo> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  final firebase = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FireBase Demo")),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: name,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter Your Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      create();
                      name.clear();
                      email.clear();
                    },
                    child: Text(
                      "Create",
                      style: TextStyle(fontSize: 18),
                    )),
                ElevatedButton(
                    onPressed: () {
                      update();
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(fontSize: 18),
                    )),
                ElevatedButton(
                    onPressed: () {
                      delete();
                    },
                    child: Text(
                      "Delete",
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 300,
              width: double.infinity,
              child: StreamBuilder<QuerySnapshot>(
                  stream: firebase.collection("User").snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, i) {
                            QueryDocumentSnapshot x = snapshot.data!.docs[i];
                            return Column(
                              children: [
                                ListTile(
                                  title: Text(x['name']),
                                  subtitle: Text(x['email']),
                                ),
                                Divider(
                                  height: 10,
                                  thickness: 2,
                                  color: Colors.red,
                                )
                              ],
                            );
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }

  Future<void> create() async {
    try {
      await firebase
          .collection("User")
          // .doc()
          .doc(name.text)
          .set({"name": name.text, "email": email.text});
    } catch (e) {
      print(e);
    }
  }

  Future<void> update() async {
    try {
      await firebase.collection("User").doc(name.text).update({
        "email": email.text,
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> delete() async {
    try {
      await firebase.collection("User").doc(name.text).delete();
    } catch (e) {
      print(e);
    }
  }
}
