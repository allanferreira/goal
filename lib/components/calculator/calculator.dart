import 'package:flutter/material.dart';
import 'package:goal/components/calculator/calculator_keyboard.dart';
import 'package:goal/components/calculator/calculator_screen.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 2,
          child: CalculatorScreen(),
        ),
        Flexible(
          flex: 5,
          child: CalculatorKeyboard(),
        ),
      ],
    );
  }
}
