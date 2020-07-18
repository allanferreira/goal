import 'package:flutter/material.dart';
import 'package:goal/models/math_token.dart';
import 'package:goal/models/operator_token.dart';

class CalculatorKey extends StatefulWidget {
  final MathToken mathToken;

  CalculatorKey({this.mathToken});

  @override
  _CalculatorKeyState createState() => _CalculatorKeyState(mathToken);
}

class _CalculatorKeyState extends State<CalculatorKey> {
  var _pressKeyColor = Colors.transparent;
  final MathToken mathToken;

  _CalculatorKeyState(this.mathToken);

  _mainColor(context) => mathToken is OperatorToken
      ? Theme.of(context).primaryColor
      : Theme.of(context).textTheme.bodyText1.color;

  _onTapUp(TapUpDetails details) {
    setState(() {
      _pressKeyColor = Colors.transparent;
    });
    print('${mathToken.key} stopped');
  }

  _onTapDown(TapDownDetails details) {
    setState(() {
      _pressKeyColor = Theme.of(context).accentColor;
    });
    print('${mathToken.key} pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTapUp: _onTapUp,
        onTapDown: _onTapDown,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _pressKeyColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Text(
            mathToken.key,
            style: TextStyle(
              color: _mainColor(context),
              fontSize: 18,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
      ),
    );
  }
}
