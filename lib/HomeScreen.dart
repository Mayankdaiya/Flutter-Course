import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        leading: Icon(Icons.account_circle),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 's0');
              },
              child: const Text("Go to Screen 0"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 's1');
              },
              child: const Text("Go to Screen 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 's2');
              },
              child: const Text("Go to Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
