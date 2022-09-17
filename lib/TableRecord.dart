import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TableRecord extends StatelessWidget {
  const TableRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Data Record")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Student Data",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            DataTable(columns: [
              DataColumn(label: Text("S.No.")),
              DataColumn(label: Text("Roll No.")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Class"))
            ], rows: [
              DataRow(cells: [
                DataCell(Text("1")),
                DataCell(Text("201550080")),
                DataCell(Text("Mayank")),
                DataCell(Text("B.Tech")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("201550090")),
                DataCell(Text("Punnya prasoon Gaur")),
                DataCell(Text("BBA")),
              ]),
              DataRow(cells: [
                DataCell(Text("3")),
                DataCell(Text("201550108")),
                DataCell(Text("Nikhil")),
                DataCell(Text("M.Com")),
              ]),
            ])
          ],
        ),
      ),
    );
  }
}
