import 'package:flutter/material.dart';

abstract class MathToken {

  final String _key;

  MathToken(this._key);

  get key => _key;
}