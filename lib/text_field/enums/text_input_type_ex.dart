import 'package:flutter/material.dart';

extension TextInputTypeEx on TextInputType {
  String get title {
    return toJson()['name'] as String;
  }
}
