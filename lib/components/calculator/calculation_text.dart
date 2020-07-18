import 'package:flutter/material.dart';

class CalculationText extends StatelessWidget {
  final String _n1;
  final String _n2;
  final String _operator;

  CalculationText(this._n1, this._n2, this._operator);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          _n1,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText2.color,
          ),
        ),
        Text(
          ' $_operator ',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          _n2,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText2.color,
          ),
        ),
      ],
    );
  }
}
