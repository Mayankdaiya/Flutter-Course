import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Whatsapp.dart';
import 'package:flutter_application_1/buttonsdemo.dart';

class SICalculator extends StatefulWidget {
  const SICalculator({Key? key}) : super(key: key);

  @override
  State<SICalculator> createState() => _SICalculatorState();
}

class _SICalculatorState extends State<SICalculator> {
  bool value = false;
  String? _pError = null;
  String? _rError = null;
  String? _tError = null;
  TextEditingController _PController = TextEditingController();
  TextEditingController _RController = TextEditingController();
  TextEditingController _TController = TextEditingController();
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Simple Interest Calculator",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: SafeArea(
        child: ListView(children: [
          Image(
            image: NetworkImage(
                'https://media.istockphoto.com/photos/indian-five-hundred-rupee-notes-in-a-sack-cloth-picture-id1172767797?k=20&m=1172767797&s=612x612&w=0&h=6A9GQMTI61OcUvV8hU_W_7foj6uQzu1LRBIT0K3K3h4='),
            width: 300,
            height: 400,
          ),
          TextField(
            maxLength: 10,
            controller: _PController,
            decoration: InputDecoration(
              errorText: _pError,
              labelText: "Principle",
              hintText: "Enter Principle Amount",
              labelStyle: TextStyle(
                fontSize: 22,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            maxLength: 10,
            controller: _RController,
            decoration: InputDecoration(
              errorText: _rError,
              labelText: "Rate",
              hintText: "Enter Rate of Interest in %",
              labelStyle: TextStyle(
                fontSize: 22,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            maxLength: 10,
            controller: _TController,
            decoration: InputDecoration(
              errorText: _tError,
              labelText: "Time",
              hintText: "Enter the Time",
              labelStyle: TextStyle(
                fontSize: 22,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              SizedBox(
                width: 4,
              ),
              Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  }),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Whatsappdemo();
                    }));
                  },
                  child: Text("Are you agree with our terms and service")),
            ],
          ),
          Container(
            child: Row(
              children: [
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_PController.text.length == 0) {
                          _pError = "Enter the Principal Amount";
                        } else if (_RController.text.length == 0) {
                          _rError = "Enter the Rate of Interest";
                        } else if (_TController.text.length == 0) {
                          _tError = "Enter the Time";
                        } else {
                          double res = double.parse(_PController.text) *
                              double.parse(_RController.text) *
                              double.parse(_TController.text) /
                              100;
                          result = res.toString();
                        }
                      });
                    },
                    child: Text("Calculate")),
                SizedBox(width: 100),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _PController.clear();
                        _RController.clear();
                        _TController.clear();
                        result = "";
                      });
                    },
                    child: Text("Reset")),
              ],
            ),
          ),
          if (_PController.text.length != 0 ||
              _TController.text.length != 0 ||
              _RController.text.length != 0)
            Text("your investement will be worth $result rupees")
        ]),
      ),
    );
  }
}
