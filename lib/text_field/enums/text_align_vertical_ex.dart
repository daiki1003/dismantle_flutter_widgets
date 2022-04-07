import 'package:flutter/material.dart';

extension TextAlignVerticalEx on TextAlignVertical {
  String get name {
    if (y == -1.0) {
      return 'top';
    }
    if (y == 0.0) {
      return 'center';
    }
    if (y == 1.0) {
      return 'bottom';
    }
    throw UnimplementedError('TextAlignVertical :$y can\'t return name');
  }
}
