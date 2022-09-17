import 'package:flutter/material.dart';
import 'package:flutter_application_1/SamplePages.dart';

class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({Key? key}) : super(key: key);

  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int _selectedItem = 0;
  var _pagesData = [HomePage(), AboutPage(), ServicePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: Container(
        child: _pagesData[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.room_service), label: "Service"),
        ],
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
