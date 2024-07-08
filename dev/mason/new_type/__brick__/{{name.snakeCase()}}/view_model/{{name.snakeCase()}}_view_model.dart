import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:dismantling/{{name.snakeCase()}}/components/{{name.snakeCase()}}_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name.snakeCase()}}_view_model.g.dart';

@riverpod
class {{name.pascalCase()}}ViewModel extends _${{name.pascalCase()}}ViewModel {
  @override
  {{name.pascalCase()}}State build() {
    return {{name.pascalCase()}}State.empty();
  }

}
