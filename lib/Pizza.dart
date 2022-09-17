import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

enum PizzaSize { small, medium, large }

enum PizzaTopping { Corn, onion, Mushrooms, Green_paper, Black_olive }

class pizza extends StatefulWidget {
  pizza({Key? key}) : super(key: key);

  @override
  State<pizza> createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {
  // for date and time button

  DateTime today = DateTime.now();
  TimeOfDay todayTime = TimeOfDay.now();
  // for values

  bool value = false;
  bool val = false;
  bool oval = false;
  bool ovalue = false;
  bool oovalue = false;
  bool pvalue = false;
  PizzaSize? Size;
  var pizzasize = "Not Selected";
  var ptopping = [];
  var price;
  //PizzaTopping? topping;
  //Slider values
  double _initialValue = 1;
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          //Padding(padding: EdgeInsets.only(left: 10)),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(right: 130),
            child: Text(
              "Select your Topping",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Checkbox(
                  activeColor: Colors.red,
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                      if (ptopping.contains("Onion"))
                        ptopping.remove("Onion");
                      else
                        ptopping.add("Onion");
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text("Onion")
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Checkbox(
                  activeColor: Colors.red,
                  value: this.val,
                  onChanged: (bool? val) {
                    setState(() {
                      this.val = val!;
                      if (ptopping.contains("Black Olive"))
                        ptopping.remove("Black Olive");
                      else
                        ptopping.add("Black Olive");
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text("Black Olive")
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Checkbox(
                  activeColor: Colors.red,
                  value: this.oval,
                  onChanged: (bool? oval) {
                    setState(() {
                      this.oval = oval!;
                      if (ptopping.contains("Mushrooms"))
                        ptopping.remove("Mushrooms");
                      else
                        ptopping.add("Mushrooms");
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text("Mushrooms")
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Checkbox(
                  activeColor: Colors.red,
                  value: this.ovalue,
                  onChanged: (bool? ovalue) {
                    setState(() {
                      this.ovalue = ovalue!;
                      if (ptopping.contains("Green Paper"))
                        ptopping.remove("Green Paper");
                      else
                        ptopping.add("Green Paper");
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text("Green Paper")
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Checkbox(
                  activeColor: Colors.red,
                  value: this.oovalue,
                  onChanged: (bool? oovalue) {
                    setState(() {
                      this.oovalue = oovalue!;
                      if (ptopping.contains("Corn"))
                        ptopping.remove("Corn");
                      else
                        ptopping.add("Corn");
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text("Corn")
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(right: 130),
            child: Text(
              "Select yout Pizza Size",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text("Small"),
            leading: Radio<PizzaSize>(
              activeColor: Colors.red,
              value: PizzaSize.small,
              groupValue: Size,
              onChanged: (PizzaSize? value) {
                setState(() {
                  Size = value;
                  pizzasize = "small";
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Medium"),
            leading: Radio<PizzaSize>(
              activeColor: Colors.red,
              value: PizzaSize.medium,
              groupValue: Size,
              onChanged: (PizzaSize? value) {
                setState(() {
                  Size = value;
                  pizzasize = "Medium";
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Large"),
            leading: Radio<PizzaSize>(
              activeColor: Colors.red,
              value: PizzaSize.large,
              groupValue: Size,
              onChanged: (PizzaSize? value) {
                setState(() {
                  Size = value;
                  pizzasize = "Large";
                });
              },
            ),
          ),

          Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Pizza Quantity :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20))),
              Container(
                width: 200,
                //padding: EdgeInsets.only(right: 200),
                child: Slider(
                    thumbColor: Colors.black,
                    activeColor: Color.fromARGB(255, 241, 106, 97),
                    inactiveColor: Color.fromARGB(255, 235, 152, 147),
                    value: _initialValue,
                    max: 40,
                    divisions: 40,
                    label: _initialValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _initialValue = value;
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Payment Status :",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20))),
              Container(
                width: 70,
                padding: EdgeInsets.only(left: 0),
                child: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: Colors.black,
                  activeTrackColor: Colors.red,
                  inactiveThumbColor: Colors.black,
                  inactiveTrackColor: Colors.red,
                ),
              ),
              if (isSwitched == true)
                Text(
                  "Yes",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              else
                Text(
                  "No",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Text(
                "Go For COD",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Checkbox(
                  activeColor: Colors.red,
                  value: this.pvalue,
                  onChanged: (bool? pvalue) {
                    setState(() {
                      this.pvalue = pvalue!;
                    });
                  }),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {},
                child: Text(
                  "Online",
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Text(
                "Select Delivery Date",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {
                    selectDate(context);
                  },
                  color: Colors.red,
                  icon: Icon(Icons.date_range)),
              Text("${today.day}-${today.month}-${today.year}"),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 18,
              ),
              Text(
                "Select Delivery Time",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {
                    selectTime(context);
                  },
                  color: Colors.red,
                  icon: Icon(Icons.access_time)),
              Text("${todayTime.hour}-${todayTime.minute}"),
            ],
          ),
          Container(
            width: 400,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  setState(() {
                    if (pizzasize == "Large")
                      price = 250;
                    else if (pizzasize == "Medium")
                      price = 200;
                    else
                      price = 150;
                    if (ptopping.contains("Onion")) price += 10;
                    if (ptopping.contains("Corn")) price += 20;
                    if (ptopping.contains("Black Olive")) price += 30;
                    if (ptopping.contains("Mushrooms")) price += 40;
                    if (ptopping.contains("Green Paper")) price += 20;
                    price *= _initialValue;
                  });
                  showPreview(context);
                },
                child: Text(
                  "Preview Order",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
      //backgroundColor: Color.fromARGB(255, 232, 119, 38),
    );
  }

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
          'Topping: $ptopping \nPizza Size: $pizzasize\n Pizza Quantity: $_initialValue\nFinal Amount: $price'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  Navigator.pushNamed(context, 'S2');
                },
                child: Text("Pay")),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
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
