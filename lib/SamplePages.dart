import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Page Data"),
      ),
      backgroundColor: Color.fromARGB(255, 168, 53, 7),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("About  Page Data"),
      ),
      backgroundColor: Color.fromARGB(255, 8, 90, 113),
    );
  }
}

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Service Page Data"),
      ),
      backgroundColor: Color.fromARGB(255, 173, 7, 46),
    );
  }
}
