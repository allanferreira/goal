import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:goal/components/calculator/calculator_key.dart';
import 'package:goal/models/math_token.dart';
import 'package:goal/models/number_token.dart';
import 'package:goal/models/operator_token.dart';
import 'package:quiver/iterables.dart';

class CalculatorKeyboard extends StatelessWidget {

  final List<MathToken> _tokens = [
    OperatorToken('C'),
    OperatorToken('⌫'),
    OperatorToken('%'),
    OperatorToken('/'),
    NumberToken('7'),
    NumberToken('8'),
    NumberToken('9'),
    OperatorToken('*'),
    NumberToken('4'),
    NumberToken('5'),
    NumberToken('6'),
    OperatorToken('-'),
    NumberToken('1'),
    NumberToken('2'),
    NumberToken('3'),
    OperatorToken('+'),
    OperatorToken('+/-'),
    NumberToken('0'),
    NumberToken('.'),
    OperatorToken('='),
  ];

  List<CalculatorKey> _keys() {
    return _tokens.map((mathToken) =>
      CalculatorKey(mathToken: mathToken)
    ).toList();
  }

  _keysByRow() {
    var rows = partition(_keys(), 4);
    return rows.map((row) =>
        Flexible(child: Row(children: row)
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _keysByRow(),
      ),
    );
  }
}
