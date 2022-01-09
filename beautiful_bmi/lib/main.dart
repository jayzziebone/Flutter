import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xFFFAFAFA),
      ),
      home: HomePage(),
    );
  }
}
