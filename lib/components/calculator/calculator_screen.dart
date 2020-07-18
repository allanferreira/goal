import 'package:flutter/material.dart';
import 'package:goal/components/calculator/result_text.dart';
import 'package:goal/components/calculator/calculation_text.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          CalculationText('48.5', '65.7', '*'),
          ResultText('3,186.45'),
        ],
      ),
    );
  }
}
