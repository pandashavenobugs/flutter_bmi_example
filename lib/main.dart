import 'package:bmi_calculator_app/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/screens/input_page.dart';

void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/resultPage': (context) => ResultPage()
      },
    );
  }
}
