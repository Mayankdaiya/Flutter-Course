import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pizza.dart';
import 'package:flutter_application_1/firebaseApp.dart';
import 'package:firebase_core/firebase_core.dart';

import 'SimpleInterestCalci.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SICalculator()));
}



//for screens(in runApp)
// MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomeScreen(),
//     routes: {
//       's0': (context) => screen0(),
//       's1': (context) => screen1(),
//       's2': (context) => screen2(),
//     },
//   )