import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

enum SingingCharacter { lafayette, jefferson }

class buttonsDemo extends StatefulWidget {
  buttonsDemo({Key? key}) : super(key: key);

  @override
  State<buttonsDemo> createState() => _buttonsDemoState();
}

class _buttonsDemoState extends State<buttonsDemo> {
  SingingCharacter? Size;
  double _currentSliderValue = 20;
  // for date and time button

  DateTime today = DateTime.now();
  TimeOfDay todayTime = TimeOfDay.now();

  // for previw
  var _initialValue = 0.0;
  String PizzaSize = "";
  String pizzaSize = "";

  // for switch
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("This is Buttons Demo"),
            ),
            backgroundColor: Colors.orange,
            body: Center(
              child: Container(
                child: Column(children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                      ),
                      onPressed: () {
                        print("Elevated Button CLicked");
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 24),
                      )),
                  TextButton(
                      onPressed: () {
                        print("TExt Button CLicked");
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 24),
                      )),
                  OutlinedButton(
                      onPressed: () {
                        print("Outlined Button CLicked");
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(fontSize: 24),
                      )),
                  IconButton(
                      onPressed: () {
                        print("Icon Button CLicked");
                      },
                      icon: Icon(
                        Icons.alarm,
                        size: 50,
                        color: Colors.blue,
                      )),
                  ListTile(
                      title: const Text('Lafayette'),
                      leading: Radio<SingingCharacter>(
                          value: SingingCharacter.lafayette,
                          groupValue: Size,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              Size = value;
                            });
                          })),
                  ListTile(
                      title: const Text('jefferson'),
                      leading: Radio<SingingCharacter>(
                          value: SingingCharacter.jefferson,
                          groupValue: Size,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              Size = value;
                            });
                          })),
                  Slider(
                      value: _currentSliderValue,
                      max: 100,
                      divisions: 5,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      }),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.black,
                    inactiveThumbColor: Colors.redAccent,
                    inactiveTrackColor: Colors.black,
                  ),
                  Text("Select yout Date"),
                  IconButton(
                      onPressed: () {
                        selectDate(context);
                      },
                      icon: Icon(Icons.date_range)),
                  Text("${today.day}-${today.month}-${today.year}"),
                  Text("Select yout Time"),
                  IconButton(
                      onPressed: () {
                        selectTime(context);
                      },
                      icon: Icon(Icons.access_time)),
                  Text("${todayTime.hour}-${todayTime.minute}"),
                ]),
              ),
            )));
  }

  void selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: today,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));

    // print(pickedDate);
    if (pickedDate != null && pickedDate != today) {
      setState(() {
        today = pickedDate;
      });
    }
  }

  void selectTime(BuildContext context) async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: todayTime);

    setState(() {
      todayTime = pickedTime!;
    });
  }

// for preview
  void showPreview(BuildContext context) {
    var alertDialog = CupertinoAlertDialog(
      title: Text(
        'Pizza Order Status',
        style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
      content: Text(
          'Topping: $PizzaSize \nPizza Size: $pizzaSize\n Pizza Quantity: $_initialValue'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'S2');
                },
                child: Text("Pay")),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Change Order"))
          ],
        )
      ],
    );

    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }
}
