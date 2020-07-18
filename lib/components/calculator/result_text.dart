import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  final String _value;

  ResultText(this._value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Text(
          _value,
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 40,
            fontWeight: FontWeight.w800
          ),
      ),
    );
  }
}
