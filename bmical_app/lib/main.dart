import 'package:flutter/material.dart';
import 'app_screens/bmi_calculator.dart';
import 'app_screens/bmi_result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmaiCalculator(),
    );
  }
}
