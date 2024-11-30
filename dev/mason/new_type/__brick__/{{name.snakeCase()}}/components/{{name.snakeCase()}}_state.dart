import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_state.freezed.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({

  }) = _{{name.pascalCase()}}State;

  factory {{name.pascalCase()}}State.empty() {
    return const {{name.pascalCase()}}State();
  }
}
