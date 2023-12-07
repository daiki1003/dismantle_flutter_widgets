import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_decoration_state.freezed.dart';

@freezed
class TextFieldDecorationState with _$TextFieldDecorationState {
  const factory TextFieldDecorationState({
    @Default(false) bool showsIcon,
    Color? iconColor,
    @Default(false) bool showsLabel,
    @Default(false) bool showsLabelText,
  }) = _TextFieldDecorationState;

  factory TextFieldDecorationState.empty() {
    return const TextFieldDecorationState();
  }
}

extension TextFieldDecorationStateEx on TextFieldDecorationState {
  TextFieldDecorationState showsIconToggled() {
    return copyWith(showsIcon: !showsIcon);
  }

  TextFieldDecorationState iconColorUpdated(Color? iconColor) {
    return copyWith(iconColor: iconColor);
  }

  TextFieldDecorationState showsLabelToggled() {
    return copyWith(showsLabel: !showsLabel);
  }

  TextFieldDecorationState showsLabelTextToggled() {
    return copyWith(showsLabelText: !showsLabelText);
  }
}
